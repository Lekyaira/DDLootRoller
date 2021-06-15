//
//  ContentView.swift
//  Shared
//
//  Created by Ryan Anderson on 6/15/21.
//

import SwiftUI

struct LootItem: Identifiable {
    let name: String
    let goldValue: Float
    let id = UUID()
    
}

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
                }) {
                    Text("Get Loot")
                    //    .padding(10.0)
                    //    .overlay(
                    //        RoundedRectangle(cornerRadius: 10.0)
                    //            .stroke(lineWidth: 2.0)
                    //    )
                }.buttonStyle(DefaultButtonStyle())
                Spacer()
            }
            
            List(loot) {
                Text($0.name)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( loot: [LootItem(name: "Test", goldValue: 2)])
    }
}
