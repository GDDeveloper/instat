
import UIKit
import AVKit
import Protocols

class SetupVideoPlay: VMManager {
  
  //MARK: - Public variable
  public var VM: VideoPlayViewModel!
  
  public func playerController(){
    Orientation.lockOrientation(.landscape)
    self.VM.playerController = AVPlayerViewController()
    self.VM.playerController.modalPresentationStyle = .fullScreen
    self.VM.playerController.modalTransitionStyle   = .crossDissolve
    self.VM.VC.addChild(self.VM.playerController)
    self.VM.playerController.didMove(toParent: self.VM.VC)
    self.VM.VC.view.addSubview(self.VM.playerController.view)
    self.VM.playerController.view.frame = self.VM.VC.view.frame
    self.VM.playerController.delegate = self.VM.VC
    
    //Play video
    self.VM.managers.logic.play()
  }
}
//MARK: - Initial
extension SetupVideoPlay {
  
  //MARK: - Inition
  convenience init(viewModel: VideoPlayViewModel) {
    self.init()
    self.VM = viewModel
  }
}


