//
//  ContentView.swift
//  Memorize_HW
//
//  Created by Yang Ding on 4/22/23.
//

import SwiftUI

struct ContentView: View {
	var emojis = ["🐶", "🐹", "🦁", "🐸", "🐻‍❄️", "🦄", "🐷", "🐻"]
	
	@State var emojiCount = 8
	
	var body: some View {
		VStack {
			// title
			Text("Memorize!")
			// cards
			ScrollView {
				LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
					ForEach(emojis[0..<emojiCount], id: \.self, content: { emoji in
						CardView(isFaceUp: true, content: emoji).aspectRatio(2/3, contentMode: .fit)
					})
				}
			}
			// theme chooser
			HStack {
				VStack {
					Button {
						// change current view to this category
					} label: {
						Image(systemName: "pawprint")
					}
					Text("Animals")
				}
				VStack {
					Button {
						// change current view to this category
					} label: {
						Image(systemName: "sportscourt")
					}
					Text("Sports")
				}
				VStack {
					Button {
						// change current view to this category
					} label: {
						Image(systemName: "fork.knife")
					}
					Text("Foods")
				}
			}
		}
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
    }
}
