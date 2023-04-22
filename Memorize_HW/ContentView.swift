//
//  ContentView.swift
//  Memorize_HW
//
//  Created by Yang Ding on 4/22/23.
//

import SwiftUI

struct ContentView: View {
	var emojis = ["🐶", "🐹", "🦁", "🐸", "🐻‍❄️", "🦄", "🐷", "🐻", "🐥", "🐙", "🦦"]
	
	@State var emojiCount = 11
	
	var body: some View {
		VStack {
			// title
			Text("Memorize!").font(.title).foregroundColor(Color(hue: 1.0, saturation: 0.50, brightness: 0.50))
			// cards
			ScrollView {
				LazyVGrid(columns: [GridItem(.adaptive(minimum: 75))]) {
					ForEach(emojis[0..<emojiCount], id: \.self, content: { emoji in
						CardView(isFaceUp: true, content: emoji).aspectRatio(2/3, contentMode: .fit)
					})
				}
			}
			.font(.largeTitle)
			.foregroundColor(.init(hue: 0.08, saturation: 0.52, brightness: 0.90))
			Spacer()
			// theme chooser
			HStack(alignment: .bottom) {
				VStack {
					Button {
						// change current view to this category
					} label: {
						Image(systemName: "pawprint")
							.padding(.bottom, -5.0)
					}.font(.title2)
					Text("Animals").font(.subheadline)
				}
				Spacer()
				VStack {
					Button {
						// change current view to this category
					} label: {
						Image(systemName: "sportscourt")
							.padding(.bottom, -5.0)
					}.font(.title2)
					Text("Sports").font(.subheadline)
				}
				Spacer()
				VStack {
					Button {
						// change current view to this category
					} label: {
						Image(systemName: "cloud")
							.padding(.bottom, -4.0)
					}.font(.title2)
					Text("Weather").font(.subheadline)
				}
			}.padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/).foregroundColor(.blue)
		}
		.padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
	}
}

struct CardView: View {
	var isFaceUp: Bool
	var content: String
	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 5)
			Text(content)
		}
	}
}














struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
			ContentView()
				.preferredColorScheme(.light)
    }
}
