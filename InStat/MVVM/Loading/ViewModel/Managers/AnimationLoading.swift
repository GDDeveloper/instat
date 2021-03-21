import UIKit
import Protocols

class AnimationLoading: VMManager {
  
  //MARK: - Public variable
  public var VM: LoadingViewModel!
  
  
}
//MARK: - Initial
extension AnimationLoading {
  
  //MARK: - Inition
  convenience init(viewModel: LoadingViewModel) {
    self.init()
    self.VM = viewModel
  }
}

