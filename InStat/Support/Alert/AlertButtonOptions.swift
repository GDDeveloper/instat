//
//  Alert.swift
//  DgBetTrip
//
//  Created by Senior Developer on 19.04.2020.
//  Copyright © 2020 Senior Developer. All rights reserved.
//
import Foundation

class AlertButtonOptions {
  
  public func change(type: AlertButtonOptions.Types) -> AlertButtonOptionsoble {
    
    switch type {
      case .InstallTG:
        return AlertButtonTG()
      case .TwoResponce:
        return TwoResponce()
      case .Cancel:
        return AlertButtonCancel()
      case .AddPhoto:
        return AddPhoto()
    }
  }
  enum Types {
    case InstallTG
    case TwoResponce
    case Cancel
    case AddPhoto
  }
}

class AlertButtonTG: AlertButtonOptionsoble {
 
  var buttonsCount: Int {
    get {
      return buttonsText.count
    }
  }
  var buttonsText = ["Уже установлен", "Установить из App Store", "Отмена"]
}
class TwoResponce: AlertButtonOptionsoble {
 
  var buttonsCount: Int {
    get {
      return buttonsText.count
    }
  }
  var buttonsText = ["Да", "Нет"]
}

class AlertButtonCancel: AlertButtonOptionsoble {
 
  var buttonsCount: Int {
    get {
      return buttonsText.count
    }
  }
  var buttonsText = ["Да", "Нет"]
}
class AddPhoto: AlertButtonOptionsoble {
 
  var buttonsCount: Int {
    get {
      return buttonsText.count
    }
  }
  var buttonsText = ["Библиотека", "Фотопарат", "Отмена"]
}
