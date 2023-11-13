//
//  CreditsView.swift
//  AfricaUI
//
//  Created by Daniel Washington Ignacio on 13/11/23.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - Properties
    
    
    //MARK: - Body
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
                 Copyright - Daniel Washington Ignacio
                 All right reserved
                 Better Apps Less Code
                 """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}


//MARK: - preview
#Preview {
    CreditsView()
}
