import Foundation

class LogicLoading: VMManager {
  
  //MARK: - Public variable
  public var VM: LoadingViewModel!
  
  
}
//MARK: - Initial
extension LogicLoading {
  
  //MARK: - Inition
  convenience init(viewModel: LoadingViewModel) {
    self.init()
    self.VM = viewModel
  }
}
