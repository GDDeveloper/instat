
import UIKit
import Protocols
import AnimatedGradientView
import NVActivityIndicatorView

class SetupMain: VMManager {
  
  //MARK: - Public variable
  public var VM: MainViewModel!
  
  public func addGradientCommonView(){
    let animatedGradient = AnimatedGradientView(frame: self.VM.VC.view.frame)
    animatedGradient.direction = .upRight
    animatedGradient.colors = [[.set(.twoGradient), .set(.oneGradient)]]
    self.VM.VC.view.insertSubview(animatedGradient, at: 0)
  }
  public func playVideoButton(){
    self.VM.VC.playVideoButton.cornerRadius(25, false)
    self.VM.VC.playVideoButton.shadowColor(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5), radius: 25)
  }
  public func setupLoading(){
    let rect = CGRect(x: 0, y: 0, width: 250, height: 250)
    self.VM.loading = NVActivityIndicatorView(frame  : rect,
                                              type   : .ballRotateChase,
                                              color  : .set(.oneGradient),
                                              padding: 10)
    self.VM.loading.center = self.VM.VC.view.center
    self.VM.VC.view.addSubview(self.VM.loading)
  }
}
//MARK: - Initial
extension SetupMain {
  
  //MARK: - Inition
  convenience init(viewModel: MainViewModel) {
    self.init()
    self.VM = viewModel
  }
}


