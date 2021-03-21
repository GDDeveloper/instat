//
//  Orientation.swift

import UIKit

struct Orientation {
  
  static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
    if let delegate = UIApplication.shared.delegate as? AppDelegate {
      delegate.orientationLock = orientation
    }
    UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
  }
}
 
