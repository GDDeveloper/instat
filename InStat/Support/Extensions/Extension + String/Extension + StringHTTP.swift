//
//  Extension + String 4.swift
//  Inters
//
//  Created by DEVELOPER on 20/03/2020.
//  Copyright © 2020 DEVELOPER. All rights reserved.
//
import Foundation

//MARK: - Others
extension String {
	
	static func format(_ format: Format) -> String {
		return format.rawValue
	}
	static func metod(_ metod: HTTPMethod) -> String {
		return metod.rawValue
	}
	enum Format: String {
		case two = "%02d:%02d"
	}
	enum HTTPMethod : String {
		case post  = "POST"
		case get   = "GET"
		case patch = "PATCH"
	}
}

