
import UIKit
import Reachability

class Network {
  
  public func check() -> Bool {
    let reachability = try? Reachability()
    switch reachability?.connection {
      case .cellular:
        print("cellular")
        return true
      case .wifi:
        print("wifi")
        return true
      case .unavailable:
        AlertEK.dеfault(title: .error, message: .noNetwork)
        return false
      case .none?:
        AlertEK.dеfault(title: .error, message: .noNetwork)
        return false
      default:
        AlertEK.dеfault(title: .error, message: .noNetwork)
        return false
    }
  }

}


