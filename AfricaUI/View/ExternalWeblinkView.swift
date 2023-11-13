//
//  ExternalWeblinkView.swift
//  AfricaUI
//
//  Created by Daniel Washington Ignacio on 11/11/23.
//

import SwiftUI

struct ExternalWeblinkView: View {
    //MARK: - Properties
    
    let animal: Animal
    
    //MARK: - Body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string:  "https://github/dwashi2"))!)
                }
                .foregroundColor(.accentColor)
            } //: Hstack
        } //: Box
    }
}


//MARK: - Preview
#Preview {
    ExternalWeblinkView(animal: animals[0])
}
