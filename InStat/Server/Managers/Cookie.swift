//
//  Cookie.swift
//  Leap
//
//  Created by Senior Developer on 09.09.2020.
//  Copyright © 2020 Developer. All rights reserved.
//

import UIKit

class Cookie {
  
  static let shared = Cookie()
  
  func remove(){
    HTTPCookieStorage.shared.cookies?.forEach(HTTPCookieStorage.shared.deleteCookie)
    URLCache.shared.removeAllCachedResponses()
    let cookieJar = HTTPCookieStorage.shared
    
    for cookie in cookieJar.cookies! {
      cookieJar.deleteCookie(cookie)
    }
  }
}
