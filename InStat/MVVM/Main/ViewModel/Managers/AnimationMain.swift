import UIKit
import Protocols

class AnimationMain: VMManager {
  
  //MARK: - Public variable
  public var VM: MainViewModel!
  
  
}
//MARK: - Initial
extension AnimationMain {
  
  //MARK: - Inition
  convenience init(viewModel: MainViewModel) {
    self.init()
    self.VM = viewModel
  }
}

