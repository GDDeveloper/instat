
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  public var window: UIWindow?
  public var orientationLock = UIInterfaceOrientationMask.all
  
  private let rootVC = RootVC()
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    //MARK: - Set root view controller
    self.rootVC.set(window: self.window)
    return true
  }
  


 func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
   return self.orientationLock
 }
}

