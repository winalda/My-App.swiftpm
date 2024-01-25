import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack(spacing: 12) {
                CardImage("Meme")
                CardImage("Meme")
            }
            HStack(spacing: 12) {
                CardText("fsfssf fsffsda fsfasfasd")
                CardText("fasdfas fsdasf dsfdsf fasdfs faff, fasdfas fsdasf dsfdsf fasdfs faff")
            } 
            .padding(.bottom, 20)
        }
        .padding(16)
    }
}

struct CardImage: View {
    
    let imageName: String
    
    init(_ imageName: String) {
        self.imageName = imageName
    }
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 150, 
                   height: 100, 
                   alignment: .leading)
            .clipped()
    }
}

struct CardText: View {
    let text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .multilineTextAlignment(.leading)
            .frame(width: 150,
                   alignment: .leading)
    }
}
