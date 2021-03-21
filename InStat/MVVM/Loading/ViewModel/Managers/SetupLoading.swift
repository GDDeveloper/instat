
import UIKit
import Protocols

class SetupLoading: VMManager {
  
  //MARK: - Public variable
  public var VM: LoadingViewModel!
  
  public func lottieSetup(){
    self.VM.lottieSetup = GDLottieSetup(view: self.VM.VC.lottieView)
    let name = GDLottieSetup.LottieName.loadingInStat.rawValue
    self.VM.lottieSetup.added(name: name, loopMode: .playOnce)
    self.VM.lottieSetup.setup(pading: 0)
    self.VM.lottieSetup.play()
    self.VM.lottieSetup.calbackPlay = { [weak self] finish in
      guard let self = self else { return }
      self.VM.managers.router.push(.MainVC)
    }
  }
}
//MARK: - Initial
extension SetupLoading {
  
  //MARK: - Inition
  convenience init(viewModel: LoadingViewModel) {
    self.init()
    self.VM = viewModel
  }
}


