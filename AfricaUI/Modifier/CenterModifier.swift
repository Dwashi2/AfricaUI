//
//  CenterModifier.swift
//  AfricaUI
//
//  Created by Daniel Washington Ignacio on 13/11/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
