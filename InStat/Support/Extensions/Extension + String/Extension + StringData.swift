//
//  Extension + TypeLink.swift
//  DgBetTrip
//
//  Created by Senior Developer on 03.05.2020.
//  Copyright © 2020 Senior Developer. All rights reserved.
//
import UIKit

//MARK: - Date format
extension String {

  func getDate(formatDate: FormatDate) -> Date? {
    let formater = DateFormatter()
    formater.dateFormat = formatDate.rawValue
    let date = formater.date(from: self)
  return date
  }
  enum FormatDate: String {
    case time             = "HH:mm"
    case monthDay         = "MM.dd"
    case monthDayYear     = "MM.dd.yy"
    case dayMonthText     = "dd MMMM"
    case long             = "MMMM d, yyyy"
    case yearMonthDayLine = "yyyy-MM-dd"
    case yearMonthLine    = "yyyy-MM"
    case instate          = "yyyy-MM-dd HH:mm"
  }
}
