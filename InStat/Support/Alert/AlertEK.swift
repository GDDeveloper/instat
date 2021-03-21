//
//  Alert.swift
//  DgBetTrip
//
//  Created by Senior Developer on 19.04.2020.
//  Copyright © 2020 Senior Developer. All rights reserved.
//
import SwiftEntryKit
import Foundation

class AlertEK {
  
  private static let alertView     = AlertView().loadNib()
  private static let alertButtons  = AlertButtonsView().loadNib()
  private static let buttonOptions = AlertButtonOptions()
 
  static public func hide(){
    alertView.hide()
  }
  
  //MARK: - Default
  static public func dеfault(title: Texts.Title, message: Texts.Message, completion: @escaping СlosureEmpty = {}){
    self.alertView.setup(title: title.getTextFor(title: title), message: message.getTextFor(message: message))
    self.alertView.show()
    self.alertView.completion = { completion() }
  }
  //MARK: - Options custom text
  static func customText(title: Texts.Title, message: Texts.MessageCustom, completion: @escaping СlosureEmpty = {}){
    var messageCustom = ""
    switch message {
      case .message(let text):
      messageCustom = text
    }
    self.alertView.setup(title: title.getTextFor(title: title), message: messageCustom)
    self.alertView.show()
    self.alertView.completion = { completion() }
  }
  //MARK: - Options
  static func options(title: Texts.Title, message: Texts.Message, options: AlertButtonOptions.Types, completion: @escaping Сlosure<Int>){
    let message = message.getTextFor(message: message)
    let title   = title.getTextFor(title: title)
    let options: AlertButtonOptionsoble = buttonOptions.change(type: options)
    self.alertButtons.setup(title: title, message: message, options: options)
    self.alertButtons.show()
   
    self.alertButtons.completion = { (tag) in
      completion(tag)
    }
  }
}
