//
//  VideoPlayerView.swift
//  AfricaUI
//
//  Created by Daniel Washington Ignacio on 11/11/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - Properties
    
    var videoSelected: String
    var videoTitle: String
    
    //MARK: - Body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
                //Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}


//MARK: - preview
#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
