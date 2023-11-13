//
//  AnimalListitemView.swift
//  AfricaUI
//
//  Created by Daniel Washington Ignacio on 11/11/23.
//

import SwiftUI

var animals: [Animal] = Bundle.main.decode("animals.json")


struct AnimalListitemView: View {
    //MARK: - PROPERTIES
    
    let animal: Animal

    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            } //: VSTACK
        } //: HSTACK
    }
}

//MARK: - preview

#Preview {
 
    AnimalListitemView(animal: animals[1])
}
