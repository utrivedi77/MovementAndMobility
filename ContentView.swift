import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Introduction", destination: IntroductionView())
                NavigationLink("Moves for Stretching", destination: MoveListView(category: "Stretching"))
                NavigationLink("Moves for Flexibility", destination: MoveListView(category: "Flexibility"))
                NavigationLink("Moves for Joint Mobility", destination: MoveListView(category: "Joint Mobility"))
                NavigationLink("Moves for Improving Balance", destination: MoveListView(category: "Balance"))
                NavigationLink("Video Demonstrations", destination: VideoSectionView())
            }
            .navigationTitle("Movement & Mobility")
        }
    }
}
