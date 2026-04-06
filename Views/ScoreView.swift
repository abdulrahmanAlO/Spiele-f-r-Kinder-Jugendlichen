import SwiftUI

struct ScoreView: View {
@Environment(Alphabetizer.self) private var alphabetizer

    var body: some View {
        Text("Score: \(alphabetizer.score)")
            .font(.largeTitle)
            .foregroundStyle(Color.purple)
            .bold()
        Text("You tried : \(alphabetizer.tryCount),  You got it right : \(alphabetizer.score) ,  Your average score is : \(alphabetizer.WinnAverage)%")
    }
}

#Preview {
    ScoreView()
        .environment(Alphabetizer())
}
