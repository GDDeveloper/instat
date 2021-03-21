
import UIKit
import Protocols
import AVKit

class PresentVideoPlay: VMManager {
  
  //MARK: - Public variable
  public var VM: VideoPlayViewModel!
  
  public func controllerData(videoPlayData: VideoPlayData){
    if let stringUrl = videoPlayData.videoURLs?.filter({$0.qualityVideo == .hight }).first?.url {
      let url = URL(string: stringUrl)!
      self.VM.playerController.player = AVPlayer(url: url)
    }
  }
  
}
//MARK: - Initial
extension PresentVideoPlay {
  
  //MARK: - Inition
  convenience init(viewModel: VideoPlayViewModel) {
    self.init()
    self.VM = viewModel
  }
}

