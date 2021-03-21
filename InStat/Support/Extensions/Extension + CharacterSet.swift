//
//  Extension + CharacterSet.swift
//  DgBetTrip
//
//  Created by Senior Developer on 19.04.2020.
//  Copyright © 2020 Senior Developer. All rights reserved.
//
import Foundation

extension CharacterSet {

	static var urlAllowedCharacters: CharacterSet {
		// Start by including hash, which isn't in any set
		var characters = CharacterSet(charactersIn: "#")
		// All URL-legal characters
		characters.formUnion(.urlUserAllowed)
		characters.formUnion(.urlPasswordAllowed)
		characters.formUnion(.urlHostAllowed)
		characters.formUnion(.urlPathAllowed)
		characters.formUnion(.urlQueryAllowed)
		characters.formUnion(.urlFragmentAllowed)
	return characters
	}
}
