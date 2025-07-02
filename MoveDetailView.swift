import SwiftUI
import AVKit

struct MoveDetailView: View {
    let moveName: String
    
    var body: some View {
        VStack {
            Text(moveName)
                .font(.title)
                .padding()
            
            if let url = Bundle.main.url(forResource: moveName, withExtension: "mp4") {
                VideoPlayer(player: AVPlayer(url: url))
                    .frame(height: 300)
            } else {
                Text("Video coming soon")
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .navigationTitle(moveName)
    }
}
