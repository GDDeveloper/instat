
import UIKit
import Protocols

class PresentLoading: VMManager {
  
  //MARK: - Public variable
  public var VM: LoadingViewModel!
  
  
}
//MARK: - Initial
extension PresentLoading {
  
  //MARK: - Inition
  convenience init(viewModel: LoadingViewModel) {
    self.init()
    self.VM = viewModel
  }
}

