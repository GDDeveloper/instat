
import Network
import Foundation

class NetworkManager {
  
  private let queue = DispatchQueue.global()
  private let monitor: NWPathMonitor
  
  public private(set) var isConected: Bool = false
  
  public func startMonitoring(){
  
  }
  
  init(){
    self.monitor = NWPathMonitor()
  }
}
