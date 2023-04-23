//
//  ContentView.swift
//  Memorize_HW
//
//  Created by Yang Ding on 4/22/23.
//

import SwiftUI

struct ContentView: View {
	@State var emojiCategories = [
		"animals": ["🐶", "🐹", "🦁", "🐸", "🐻‍❄️", "🦄", "🐷", "🐻", "🐥", "🐙", "🦦"],
		"sports": ["⚽️", "🏓", "🏈", "🏹", "🏀", "🧗🏻‍♀️", "🤺", "🏋🏻‍♀️", "🎾", "🥊", "🏂", "⛳️", "🏐"],
		"weather": ["☀️", "🌦", "❄️", "⛈", "☁️", "🌪", "☄️", "🌈"]
	]
	@State var emojis = ["🐶", "🐹", "🦁", "🐸", "🐻‍❄️", "🦄", "🐷", "🐻", "🐥", "🐙", "🦦"]
	
	
	
	var body: some View {
		VStack {
			// title
			Text("Memorize!").font(.title).foregroundColor(Color(hue: 1.0, saturation: 0.50, brightness: 0.50))
			// cards
			ScrollView {
				LazyVGrid(columns: [GridItem(.adaptive(minimum: 75))]) {
					ForEach(emojis[0..<emojis.count], id: \.self, content: { emoji in
						CardView(isFaceUp: true, content: emoji).aspectRatio(2/3, contentMode: .fit)
					})
				}
			}
			.font(.largeTitle)
			.foregroundColor(.init(hue: 0.08, saturation: 0.52, brightness: 0.90))
//			CardGrid(emojis: emojiCategories["animals"]!, emojiCount: emojiCategories["animals"]!.count)
			Spacer()
			// theme chooser
			HStack(alignment: .bottom) {
				VStack {
					Button {
						// change current view to this category
						emojis = emojiCategories["animals"]!.shuffled()
					} label: {
						Image(systemName: "pawprint")
							.padding(.bottom, -5.0)
					}.font(.title2)
					Text("Animals").font(.subheadline)
				}
				.onTapGesture {
					emojis = emojiCategories["animals"]!.shuffled()
				}
				Spacer()
				VStack {
					Button {
						// change current view to this category
						emojis = emojiCategories["sports"]!.shuffled()
					} label: {
						Image(systemName: "sportscourt")
							.padding(.bottom, -5.0)
					}.font(.title2)
					Text("Sports").font(.subheadline)
				}
				.onTapGesture {
					emojis = emojiCategories["sports"]!.shuffled()
				}
				Spacer()
				VStack {
					Button {
						// change current view to this category
						emojis = emojiCategories["weather"]!.shuffled()
					} label: {
						Image(systemName: "cloud")
							.padding(.bottom, -4.0)
					}.font(.title2)
					Text("Weather").font(.subheadline)
				}
				.onTapGesture {
					emojis = emojiCategories["weather"]!.shuffled()
				}
			}.padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing], 20.0/*@END_MENU_TOKEN@*/).foregroundColor(Color(hue: 1.0, saturation: 0.821, brightness: 0.505))
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
