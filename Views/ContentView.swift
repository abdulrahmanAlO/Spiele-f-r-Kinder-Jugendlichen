import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Vocabulary_mastery()
        }
        .padding(.top, 50)
    }
}

#Preview {
    ContentView()
        .environment(Alphabetizer())
}
