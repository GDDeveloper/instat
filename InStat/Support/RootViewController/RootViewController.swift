
import UIKit

class RootVC {
  
  public func set(window: UIWindow?){
    let rootViewController = UIStoryboard.createVC(sbID: .Loading)
    window?.rootViewController = rootViewController
    window?.makeKeyAndVisible()
  }
}

