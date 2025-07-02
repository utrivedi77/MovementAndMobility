import SwiftUI

struct MoveListView: View {
    let category: String
    let moves: [String]
    
    init(category: String) {
        self.category = category
        switch category {
        case "Stretching":
            moves = ["Tadasana Stretch", "Neck Rotation", "Shoulder Roll"]
        case "Flexibility":
            moves = ["Torso Twist", "Hip Opener", "Arm Extension"]
        case "Joint Mobility":
            moves = ["Ankle Circles", "Knee Flex", "Wrist Rotation"]
        case "Balance":
            moves = ["Single Leg Balance", "Heel-Toe Walk", "Tree Pose Variation"]
        default:
            moves = []
        }
    }
    
    var body: some View {
        List(moves, id: \.self) { move in
            NavigationLink(move, destination: MoveDetailView(moveName: move))
        }
        .navigationTitle(category)
    }
}
