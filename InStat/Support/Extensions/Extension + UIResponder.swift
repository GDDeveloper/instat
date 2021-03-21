//
//  Extension + UIResponder.swift
//  PhotoGalery
//
//  Created by Aleksandr on 15.10.2019.
//  Copyright © 2019 Aleksandr. All rights reserved.
//
import UIKit

extension UIResponder {
	
	static var identifier: String {
		get {
			return String(describing:self)
		}
	}
  public var identifier: String {
    get {
      return String(describing:self)
    }
  }
	//MARK: - Set localozed text
	func localizedText(_ text: Texts.Project){
		if let label = self as? UILabel {
			label.text = NSLocalizedString(text.getTextFor(text), comment: "")
		} else if let button = self as? UIButton {
			button.setTitle(NSLocalizedString(text.getTextFor(text), comment: ""), for: .normal)
		}
	}
}
