//
//  CustomAlertView.swift
//  DgBetTrip
//
//  Created by Developer on 31.05.2020.
//  Copyright © 2020 Senior Developer. All rights reserved.
//
import SwiftEntryKit
import UIKit

class AlertView: UIView {
  
  public var completion: СlosureEmpty!
  
  public var attributes = EKAttributes()
  
  @IBOutlet weak var fonView     : UIView!
  @IBOutlet weak var titleLabel  : UILabel!
  @IBOutlet weak var messageLabel: UILabel!
  
  private func setup(text: String){
    self.attributes.name              = AlertView.identifier
    self.attributes.displayMode       = .dark
    self.attributes.border            = .value(color: .black, width: 0.5)
    self.attributes.shadow            = .active(with: .init(color: .init(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), opacity: 1, radius: 2))
    self.attributes.position          = .center
    self.attributes.displayDuration   = .infinity
    let widthConstraint               = EKAttributes.PositionConstraints.Edge.ratio(value: 0.6)
    let textHeight                    = self.messageLabel.heightText(plus: 110)
    let heightConstraint              = EKAttributes.PositionConstraints.Edge.constant(value: textHeight)
    self.attributes.positionConstraints.size = .init(width: widthConstraint, height: heightConstraint)
    self.attributes.roundCorners      = .all(radius: 7)
    self.attributes.screenInteraction = .dismiss
    self.attributes.entryInteraction  = .absorbTouches
    self.attributes.scroll            = .enabled(swipeable: false, pullbackAnimation: .jolt)
    let offset = EKAttributes.PositionConstraints.KeyboardRelation.Offset(bottom: 70, screenEdgeResistance: 50)
    let keyboardRelation = EKAttributes.PositionConstraints.KeyboardRelation.bind(offset: offset)
    self.attributes.positionConstraints.keyboardRelation = keyboardRelation
  }
  public func show(){
   SwiftEntryKit.display(entry: self, using: self.attributes)
  }
  public func hide(){
   SwiftEntryKit.dismiss()
  }
  public func setup(title: String, message: String){
    self.messageLabel.text = message
    self.titleLabel.text   = title
    self.setup(text: message)
    self.setupConstarint()
  }
  private func setupConstarint(){
    self.fonView.cornerRadius(5, true)
  }
  @IBAction func okButton(button: UIButton){
    SwiftEntryKit.dismiss(.specific(entryName: AlertView.identifier))
    self.completion?()
  }
}
