//
//  InsetGalleryView.swift
//  AfricaUI
//
//  Created by Daniel Washington Ignacio on 11/11/23.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: - Properties
    
    let animal: Animal
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                } //: Loop
            } //: Hstack
        } //: SCroll
    }
}

//MARK: - Preview
#Preview {
    InsetGalleryView(animal: animals[0])
}
