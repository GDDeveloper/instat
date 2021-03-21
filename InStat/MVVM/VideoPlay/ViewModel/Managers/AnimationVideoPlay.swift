import UIKit
import Protocols

class AnimationVideoPlay: VMManager {
  
  //MARK: - Public variable
  public var VM: VideoPlayViewModel!
  
  
}
//MARK: - Initial
extension AnimationVideoPlay {
  
  //MARK: - Inition
  convenience init(viewModel: VideoPlayViewModel) {
    self.init()
    self.VM = viewModel
  }
}

