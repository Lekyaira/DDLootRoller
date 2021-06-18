//
//  ContentView.swift
//  Shared
//
//  Created by Ryan Anderson on 6/15/21.
//

import SwiftUI

// MARK: LootItem
struct LootItem: Identifiable {
    let name: String
    let goldValue: Float
    let id = UUID()
    
}

// MARK: Coins
struct Coins {
    let value: Float
    func Gold() -> Int {
        return Int(value.rounded(.down))
    }
    func Silver() -> Int {
        return Int((value-value.rounded(.down))*10)
    }
    func Copper() -> Int {
        return Int((((value-value.rounded(.down))*10)-((value-value.rounded(.down))*10).rounded(.down))*10)
    }
}

// Represents rows in the loot listbox
// MARK: LootRow
struct LootRow: View {
    var item: LootItem
    private var g: Int
    private var showg: Bool
    private var s: Int
    private var shows: Bool
    private var c: Int
    private var showc: Bool
    
    init(Item: LootItem) {
        item = Item
        g = Coins(value: item.goldValue).Gold()
        s = Coins(value: item.goldValue).Silver()
        c = Coins(value: item.goldValue).Copper()
        showg = g > 0
        shows = s > 0
        showc = c > 0
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(item.name)
                HStack{
                    // Split gold value into silver and copper
                    if showg {
                        Text("\(g) gold").font(.subheadline).foregroundColor(.gray)
                    }
                    if shows {
                        Text("\(s) silver").font(.subheadline).foregroundColor(.gray)
                    }
                    if showc {
                        Text("\(c) copper").font(.subheadline).foregroundColor(.gray)
                    }
                }
            }
            Spacer()
        }
    }
}

// DMGLoot object
let DMG = DMGLoot()

// MARK: ContentView
struct ContentView: View {
    @State var crValue: Int = 1
    @State var isIndivitual = true
    @State var loot: [LootItem]
    
    var body: some View {
        VStack {
            HStack {
                Stepper(value: $crValue, in: 0...20) {
                    Text("Challenge Rating: \(crValue)")
                        .frame(width: 130.0, alignment: .leading)
                }
                Spacer()
                Toggle(isOn: $isIndivitual) {
                    Text("Is individual")
                }
                .toggleStyle(CheckboxToggleStyle())
                .padding(.leading, 10.0)
                .frame(width: 130)
            }
            HStack {
                Button(action: {
                    loot = DMG.GetLoot(challengeRating: crValue, isIndividual: isIndivitual)
                }) {
                    Text("Get Loot")
                }.buttonStyle(DefaultButtonStyle())
                Spacer()
                Button(action: {
                    var lootString: String = ""
                    
                    for lootItem in loot {
                        // Get each coin value
                        let g = Coins(value: lootItem.goldValue).Gold()
                        let s = Coins(value: lootItem.goldValue).Silver()
                        let c = Coins(value: lootItem.goldValue).Copper()
                        // Build the coin value strings
                        let gs = g > 0 ? "\(g)g" : ""
                        let ss = s > 0 ? "\(g)s" : ""
                        let cs = c > 0 ? "\(g)c" : ""
                        
                        // Build the final loot item string
                        lootString += "\(lootItem.name)\(g+s+c > 0 ? " - \(gs) \(ss) \(cs)" : "")\n"
                    }
                    
                    // Paste new string with loot to clipboard
                #if os(macOS)
                    let pboard = NSPasteboard.general
                    pboard.clearContents()
                    pboard.declareTypes([NSPasteboard.PasteboardType.string], owner: nil)
                    pboard.setString(lootString, forType: NSPasteboard.PasteboardType.string)
                #elseif os(iOS)
                    //TODO: Put in iOS paste code
                #endif
                }) {
                    Text("Copy")
                }.buttonStyle(DefaultButtonStyle())
            }
            
            List(loot) { lootItem in
                LootRow(Item: lootItem)
            }
        }.padding()
    }
}

// MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( loot: [LootItem(name: "Test", goldValue: 2), LootItem(name: "Test2", goldValue: 0.1), LootItem(name: "Test3", goldValue: 0.02), LootItem(name: "Test4", goldValue: 1.12), LootItem(name: "Test5", goldValue: 0)])
    }
}
