//
//  ContentView.swift
//  Shared
//
//  Created by Ryan Anderson on 6/15/21.
//

import SwiftUI

struct ContentView: View {
    @State var crValue: Int = 1
    @State var isIndivitual = true
    
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
            Text("Individual? \(isIndivitual ? "True" : "False")")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
