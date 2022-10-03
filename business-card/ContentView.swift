import SwiftUI

struct ContentView: View {
		var body: some View {
			ZStack {
				Color(red: 0.97, green: 0.76, blue: 0.57).edgesIgnoringSafeArea(.all)
				VStack {
					Image("sunny")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 150, height: 150)
						.clipShape(Circle())
						.overlay(Circle().stroke(Color.white, lineWidth: 5))
					Text("Sunny Le")
						.font(Font.custom("Creepster-Regular", size: 40))
						.bold()
						.foregroundColor(.white)
					Text("iOS Developer")
						.foregroundColor(.white)
						.font(.system(size: 25))
					Divider()
					InfoView(text: "+44 123 456 789", imageName: "phone.fill")
					InfoView(text: "justchilling@gmail.com", imageName: "envelope.fill")
				}
			}
		}
}

struct ContentView_Previews: PreviewProvider {
		static var previews: some View {
				ContentView()
		}
}
