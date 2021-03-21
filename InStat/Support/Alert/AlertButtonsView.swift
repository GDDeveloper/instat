//
//  AlertButtons.swift
//  DgBetTrip
//
//  Created by Developer on 31.05.2020.
//  Copyright © 2020 Senior Developer. All rights reserved.
//
import UIKit
import SwiftEntryKit

class AlertButtonsView: UIView {
  
  public var completion: Сlosure<Int>!
  
  public var attributes = EKAttributes()
  
  @IBOutlet private weak var fonView         : UIView!
  @IBOutlet private weak var titleLabel      : UILabel!
  @IBOutlet private weak var messageLabel    : UILabel!
  @IBOutlet private weak var buttonsStackView: UIStackView!
  
  @IBOutlet weak var buttonsStackViewConstant: NSLayoutConstraint!
  
  public func show(){
    SwiftEntryKit.display(entry: self, using: self.attributes)
  }
  public func setup(title: String, message: String, options: AlertButtonOptionsoble){
    self.messageLabel.text = message
    self.titleLabel.text   = title
    self.setupConstarint()
    self.createButton(options: options)
    self.setupAtributes(text: message, oprions: options)
  }
  private func createButton(options: AlertButtonOptionsoble){
    self.buttonsStackView.arrangedSubviews.forEach{$0.removeFromSuperview()}
    for index in 0..<options.buttonsCount {
      let button = UIButton(type: .system)
      button.setTitle(options.buttonsText[index], for: .normal)
      button.tintColor = .black
      button.setTitleColor(.black, for: .normal)
      button.backgroundColor = #colorLiteral(red: 0.9215686275, green: 0.8039215686, blue: 0.1921568627, alpha: 0.19)
      button.tag = index
      buttonsStackView.addArrangedSubview(button)
      button.addTarget(self, action: #selector(self.optionButton(button:)), for: .touchUpInside)
    }
    self.buttonsStackViewConstant.constant = CGFloat((40 * options.buttonsCount))
  }
  private func setupConstarint(){
    self.fonView.cornerRadius(5, true)
  }
  private func setupAtributes(text: String, oprions: AlertButtonOptionsoble){
    self.attributes.name              = AlertButtonsView.identifier
    self.attributes.displayMode       = .dark
    self.attributes.border            = .value(color: .black, width: 0.5)
    self.attributes.shadow            = .active(with: .init(color: .init(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), opacity: 1, radius: 2))
    self.attributes.position          = .center
    self.attributes.displayDuration   = .infinity
    let widthConstraint               = EKAttributes.PositionConstraints.Edge.ratio(value: 0.6)
    let textHeight                    = self.messageLabel.heightText(plus: 110)
    let heightView                    = CGFloat(oprions.buttonsCount * 40) + textHeight
    let heightConstraint              = EKAttributes.PositionConstraints.Edge.constant(value: heightView)
    self.attributes.positionConstraints.size = .init(width: widthConstraint, height: heightConstraint)
    self.attributes.roundCorners      = .all(radius: 7)
    self.attributes.screenInteraction = .dismiss
    self.attributes.entryInteraction  = .absorbTouches
    self.attributes.scroll            = .enabled(swipeable: false, pullbackAnimation: .jolt)
    let offset = EKAttributes.PositionConstraints.KeyboardRelation.Offset(bottom: 70, screenEdgeResistance: 50)
    let keyboardRelation = EKAttributes.PositionConstraints.KeyboardRelation.bind(offset: offset)
    self.attributes.positionConstraints.keyboardRelation = keyboardRelation
  }
  @objc
  private func optionButton(button: UIButton){
    SwiftEntryKit.dismiss(.specific(entryName: AlertButtonsView.identifier))
    self.completion?(button.tag)
  }
}
