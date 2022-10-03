import SwiftUI

struct InfoView: View {
	
	let text: String
	let imageName: String

	var body: some View {
		RoundedRectangle(cornerRadius: 25)
			.frame(height: 50)
			.foregroundColor(.white)
			.overlay(HStack {
				Image(systemName: imageName).foregroundColor(.yellow)
				Text(text)
			}).padding(.all)
	}
}

// Code to display preview
struct InfoView_Previews: PreviewProvider {
	static var previews: some View {
		InfoView(text: "Hello", imageName: "phone.fill").previewLayout(.sizeThatFits)
	}
}
