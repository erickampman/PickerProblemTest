//
//  ContentView.swift
//  PickerProblemTest
//
//  Created by Eric Kampman on 4/29/24.
//

import SwiftUI

struct ContentView: View {
	@State var items: [Item] = [
		Item(title: "aaa", details: "AAA"),
		Item(title: "bbb", details: "BBB"),
		Item(title: "ccc", details: "CCC"),
	]
	@State var chosenItem = ChosenItem(name: "Choice", chosen: nil)
	
    var body: some View {
		Text(chosenItem.chosen?.title ?? "NONE")
		SelectItemView(item: $chosenItem.chosen, items: items)
			.padding()
    }
}

#Preview {
    ContentView()
}
