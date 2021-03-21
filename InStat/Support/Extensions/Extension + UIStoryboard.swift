
import UIKit

extension UIStoryboard {
  
  static func create(sbID: UIStoryboard.ID, _ bnundleID: BundleID? = nil) -> UIStoryboard {
    var bundle: Bundle?
    if let bundleID = bnundleID {
      bundle = Bundle(identifier: bundleID.rawValue)
    }
    return UIStoryboard(name: sbID.rawValue, bundle: bundle)
  }
  static func createVC(sbID: UIStoryboard.ID, _ bnundleID: BundleID? = nil) -> UIViewController {
    var bundle: Bundle?
    if let bundleID = bnundleID {
      bundle = Bundle(identifier: bundleID.rawValue)
    }
    
    let storyBoard     = UIStoryboard(name: sbID.rawValue, bundle: bundle)
    let viewController = storyBoard.instantiateInitialViewController() ?? UIViewController()
    return viewController
  }
  
  static func createVCID(sbID: UIStoryboard.ID, vcID: UIViewController.IDVC, _ bnundleID: BundleID? = nil) -> UIViewController {
    var bundle        : Bundle?
    var viewController: UIViewController!
    if let bundleID = bnundleID {
      bundle = Bundle(identifier: bundleID.rawValue)
    }
    let storyBoard     = UIStoryboard(name: sbID.rawValue, bundle: bundle)
    if #available(iOS 13.0, *) {
       viewController = storyBoard.instantiateViewController(identifier: vcID.rawValue)
    } else {
      viewController = storyBoard.instantiateInitialViewController()
    }
    return viewController
  }
  enum ID: String, CaseIterable {
    
    case Main
    case Loading
    case VideoPlay
  }
  enum BundleID: String, CaseIterable {
    
    case Some
  }
}

