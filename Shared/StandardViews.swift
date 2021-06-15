//
//  StandardViews.swift
//  DDLootRoller
//
//  Created by Ryan Anderson on 6/15/21.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle{
    func makeBody(configuration: Configuration) -> some View {
        return HStack{
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 22, height: 22)
                .onTapGesture{configuration.isOn.toggle()}
        }
    }
}

struct DefaultButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(7.0)
            .foregroundColor(configuration.isPressed ? .accentColor : .primary)
            .overlay(
                RoundedRectangle(cornerRadius: 9.0)
                    .stroke(lineWidth: 2.0)
                    .shadow(color: .blue, radius: 10.0)
                    .foregroundColor(configuration.isPressed ? .accentColor : .primary)
            )
    }
}
