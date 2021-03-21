//
//  JSONDecode.swift
//  DgBetTrip
//
//  Created by Senior Developer on 19.04.2020.
//  Copyright © 2020 Senior Developer. All rights reserved.
//
import Foundation

class JSONDecode: Sessionoble {
	
	private let decoder = JSONDecoder()
	
	public func decode<T: Decodable>(jsonType: T.Type , url: URL?, header: Header? = nil, body: Data? = nil, httpMethod: String.HTTPMethod,  completion: @escaping ClousureDecode){
		self.session(url: url, body: body, httpMethod: httpMethod, header: header) { (sessionResult) in
			switch sessionResult {
				case .data(let data):
					do{
            
						let json = try self.decoder.decode(T.self, from: data)
						completion(.json(json))
            let _ = String(data: data, encoding: .utf8) ?? " Error JsonString"
           // print("Succes parse JSONDecode \(jsonString) string convert")
						//return error
					} catch let error {
						let jsonString = String(data: data, encoding: .utf8) ?? " Error JsonString"
						print(error.localizedDescription, "Error parse JSONDecode \(jsonString) string convert")
            completion(.error(JSONError.ErrorJsonString))
				}
				case .error(let error):
					print(error!.localizedDescription, "Error JSONDecode get from Server ")
					completion(.error(error))
			}
		}
	}
  enum JSONError: Error {
    case ErrorJsonString
  }
}

