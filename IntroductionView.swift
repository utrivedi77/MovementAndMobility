import SwiftUI

struct IntroductionView: View {
    var body: some View {
        ScrollView {
            Text("""
Welcome to Movement & Mobility through Classical Indian Dance!

This app guides you through gentle movements inspired by Bharatanatyam, Odissi, and Kathak to help you stretch, increase flexibility, and improve joint health and balance.
""")
                .padding()
        }
        .navigationTitle("Introduction")
    }
}
