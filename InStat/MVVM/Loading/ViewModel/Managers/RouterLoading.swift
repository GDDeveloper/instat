
import UIKit

class RouterLoading: VMManager {
  
  //MARK: - Public variable
  public var VM: LoadingViewModel!
  
  public func push(_ type: Push){
    
    switch type {
      case .MainVC:
        self.pushMainVC()
    }
  }
  
  enum Push {
    case MainVC
  }
}
//MARK: - Private functions
extension RouterLoading {
  
  private func pushMainVC(){
    self.VM.VC.pushVCForID(storyboardID: .Main,
                           vcID: .MainVC,
                           animation: true,
                           transitionStyle: .crossDissolve,
                           presentationStyle: .fullScreen)
  }
}
//MARK: - Initial
extension RouterLoading {
  
  //MARK: - Inition
  convenience init(viewModel: LoadingViewModel) {
    self.init()
    self.VM = viewModel
  }
}



