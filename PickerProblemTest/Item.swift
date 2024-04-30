//
//  Item.swift
//  PickerProblemTest
//
//  Created by Eric Kampman on 4/29/24.
//

import Foundation
import SwiftUI

@Observable
class Item: Identifiable, Hashable {
	static func == (lhs: Item, rhs: Item) -> Bool {
		lhs.id == rhs.id
	}
	
	var title: String
	var details: String
	
	var id: String {
		title
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(title)
		hasher.combine(details)
	}
	
	init(title: String = "", details: String = "") {
		self.title = title
		self.details = details
	}
}

@Observable
class ChosenItem: Identifiable {
	var name: String
	var chosen: Item?
	
	init(name: String, chosen: Item? = nil) {
		self.name = name
		self.chosen = chosen
	}
}



