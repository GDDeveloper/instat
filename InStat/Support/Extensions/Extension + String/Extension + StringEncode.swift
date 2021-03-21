//
//  Extension + String 2.swift
//  Inters
//
//  Created by DEVELOPER on 20/03/2020.
//  Copyright © 2020 DEVELOPER. All rights reserved.
//
import Foundation

//MARK: - Encode URL
extension String {
	
	func encodedUrl() -> String? {
		// Remove preexisting encoding,
		guard let decodedString = self.removingPercentEncoding,
			// encode any Unicode characters so URLComponents doesn't choke,
			let unicodeEncodedString = decodedString.addingPercentEncoding(withAllowedCharacters: .urlAllowedCharacters),
			// break into components to use proper encoding for each part,
			let components = URLComponents(string: unicodeEncodedString),
			// and reencode, to revert decoding while encoding missed characters.
			let percentEncodedUrl = components.url else {
				// Encoding failed
				return nil
		}
		return percentEncodedUrl.absoluteString
	}
	func encodedUrlParameters(_ parameters: CharacterSet) -> String? {
		let unicodeEncodedString = self.addingPercentEncoding(withAllowedCharacters: parameters)
		return unicodeEncodedString
	}
}
