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

// Represents rows in the loot listbox
// MARK: LootRow
struct LootRow: View {
    var item: LootItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(item.name)
                HStack{
                    // Split gold value into silver and copper
                    // This was a massive headache to set up
                    Text("\(item.goldValue, specifier: "%.0f") gold").font(.subheadline).foregroundColor(.gray)
                    Text("\((item.goldValue-item.goldValue.rounded(.down))*100, specifier: "%.0f") silver").font(.subheadline).foregroundColor(.gray)
                    Text("\((((item.goldValue-item.goldValue.rounded(.down))*100)-((item.goldValue-item.goldValue.rounded(.down))*100).rounded(.down))*100, specifier: "%.0f") copper").font(.subheadline).foregroundColor(.gray)
                }
            }
            Spacer()
        }
    }
}

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
//                Spacer()
            }
            HStack {
                Button(action: {
                    loot.removeAll()
                    loot.append(LootItem(name: "Gun", goldValue: 100))
                    loot.append(LootItem(name: "Cheese", goldValue: 0.01))
                    loot.append(LootItem(name: "Tin Penny", goldValue: 0.0001))
                }) {
                    Text("Get Loot")
                }.buttonStyle(DefaultButtonStyle())
                Spacer()
            }
            
            List(loot) { lootItem in
                LootRow(item: lootItem)
            }
        }.padding()
    }
}

// MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( loot: [LootItem(name: "Test", goldValue: 2), LootItem(name: "Test2", goldValue: 0.01), LootItem(name: "Test3", goldValue: 0.0012), LootItem(name: "Test4", goldValue: 1.1122)])
    }
}
