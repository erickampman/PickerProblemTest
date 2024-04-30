//
//  SelectItemView.swift
//  PickerProblemTest
//
//  Created by Eric Kampman on 4/29/24.
//

import SwiftUI

struct SelectItemView: View {
	@Binding var item: Item?
	var items: [Item]

    var body: some View {
		Picker("Item", selection: $item) {
			ForEach(items) { item in
				Text(item.title)
					.tag(item as Item?)
			}
		}
    }
}

#Preview {
	@State var chosenItem = ChosenItem(name: "Foo")
	@State var items: [Item] = [
		Item(title: "aaa", details: "AAA"),
		Item(title: "bbb", details: "BBB"),
		Item(title: "ccc", details: "CCC"),
	]

	return  SelectItemView(item: $chosenItem.chosen, items: items)
}
