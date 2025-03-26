//
//  RoundedTextFieldStyle.swift
//  FinancialBuddy
//
//  Created by Daniel Ancines on 25/03/25.
//
import SwiftUI

struct RoundedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(12)
            .background(.gray.opacity(0.15))
            .cornerRadius(12)
    }
}
