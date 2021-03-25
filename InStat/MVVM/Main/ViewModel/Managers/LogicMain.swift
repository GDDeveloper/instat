import UIKit

class LogicMain: VMManager {
  
  //MARK: - Public variable
  public var VM: MainViewModel!
  
  public func getMatchData(){
    
    let params = GetMatchParams(sportID: 1, matchID: 1724836)
    self.VM.mainModel = .getData(params)
  }
  
  public func pushVideoPlayVC(){
    self.VM.managers.router.push(.VideoPlayVC)
  }
  public func loading(show: Bool){
    if show {
      UIView.animate(withDuration: 1) {
        self.VM.VC.commonView.alpha = 0
      }
      self.VM.loading.startAnimating()
    } else {
      UIView.animate(withDuration: 1) {
        self.VM.VC.commonView.alpha = 1
      }
      self.VM.loading.stopAnimating()
    }
  }
}
//MARK: - Initial
extension LogicMain {
  
  //MARK: - Inition
  convenience init(viewModel: MainViewModel) {
    self.init()
    self.VM = viewModel
  }
}
