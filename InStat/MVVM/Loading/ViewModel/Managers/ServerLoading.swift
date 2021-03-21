import UIKit
import Protocols

class ServerLoading: VMManager {
  
  //MARK: - Public variable
  public var VM: LoadingViewModel!
  
  
}
//MARK: - Initial
extension ServerLoading {
  
  //MARK: - Inition
  convenience init(viewModel: LoadingViewModel) {
    self.init()
    self.VM = viewModel
  }
}


