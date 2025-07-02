import SwiftUI
import AVKit

struct VideoSectionView: View {
    let videos = ["StretchingRoutine", "FlexibilityRoutine", "JointMobilityRoutine", "BalanceRoutine"]
    
    var body: some View {
        List(videos, id: \.self) { video in
            NavigationLink(video, destination: VideoPlayerView(videoName: video))
        }
        .navigationTitle("Videos")
    }
}

struct VideoPlayerView: View {
    let videoName: String
    
    var body: some View {
        if let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
            VideoPlayer(player: AVPlayer(url: url))
                .navigationTitle(videoName)
        } else {
            Text("Video not available")
                .navigationTitle(videoName)
        }
    }
}
