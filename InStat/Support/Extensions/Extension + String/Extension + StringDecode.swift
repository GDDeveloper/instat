//
//  Extension + String.swift
//  Inters
//
//  Created by DEVELOPER on 20/03/2020.
//  Copyright © 2020 DEVELOPER. All rights reserved.
//
import Foundation

//MARK: - Decodcode URL
extension String {
	
	func decode64ToString() -> String {
		
		let decodedData = NSData(base64Encoded: self, options: NSData.Base64DecodingOptions(rawValue: 0))! as Data
		guard let decodedString = NSString(data: decodedData, encoding: String.Encoding.utf8.rawValue) as String? else { return "Error" }
		return decodedString
	}
	func decodedUrl() -> String {
		if let url = self.addingPercentEncoding( withAllowedCharacters: NSCharacterSet.urlQueryAllowed) {
			return url
		}
		return ""
	}
	func decodeRemovingUrl() -> String?{
		return self.removingPercentEncoding
	}
  func json() -> String {
   return "{" + self + "}"
  }
}
