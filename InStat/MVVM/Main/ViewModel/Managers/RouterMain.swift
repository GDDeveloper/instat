
import UIKit

class RouterMain: VMManager {
  
  //MARK: - Public variable
  public var VM: MainViewModel!
  
  public func push(_ type: Push){
    
    switch type {
      case .VideoPlayVC:
        self.pushVideoPlayVC()
    }
  }
  
  enum Push {
    case VideoPlayVC
  }
}
//MARK: - Private functions
extension RouterMain {
  
  private func pushVideoPlayVC(){
    self.VM.VC.pushVCForID(storyboardID     : .VideoPlay,
                           vcID             : .VideoPlayVC,
                           animation        : true,
                           transitionStyle  : .crossDissolve,
                           presentationStyle: .fullScreen)
  }
}
//MARK: - Initial
extension RouterMain {
  
  //MARK: - Inition
  convenience init(viewModel: MainViewModel) {
    self.init()
    self.VM = viewModel
  }
}



