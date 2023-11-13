//
//  AnimalGridItemView.swift
//  AfricaUI
//
//  Created by Daniel Washington Ignacio on 13/11/23.
//

import SwiftUI

struct AnimalGridItemView: View {
    //MARK: - Properties
    
    let animal: Animal
    
    //MARK: - Body
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}


//MARK: - Preview
#Preview {
    AnimalGridItemView(animal: animals[0])
}
