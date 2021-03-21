//
//  JSONDecode.swift
//  DgBetTrip
//
//  Created by Senior Developer on 19.04.2020.
//  Copyright © 2020 Senior Developer. All rights reserved.
//
import Foundation

class JSONDecoding {
  
  private let decoder = JSONDecoder()
  
  public func decode<T: Decodable>(jsonType: T.Type, data: Data?, completion: @escaping ClousureDecode){
    guard let data = data else { return }
    do{
      let json = try self.decoder.decode(T.self, from: data)
      completion(.json(json))
      //return error
    } catch let error {
      let jsonString = String(data: data, encoding: .utf8) ?? " Error JsonString"
      print(error.localizedDescription, "Error parse JSONDecode \(jsonString) string convert")
      completion(.error(error))
    }
  }
}
