import Foundation
import Protocols

class LogicVideoPlay: VMManager {
  
  //MARK: - Public variable
  public var VM: VideoPlayViewModel!
  
  public func getURLs(){
    let getVideoURLsParams = GetVideoURLsParams(sportID: 1, matchID: 1724836)
    self.VM.videoPlayModel = .getData(getVideoURLsParams)
  }
  
  public func pause(){
    self.VM.playerController.player?.pause()
  }
  public func play(){
    self.VM.playerController.player?.play()
  }
}
//MARK: - Initial
extension LogicVideoPlay {
  
  //MARK: - Inition
  convenience init(viewModel: VideoPlayViewModel) {
    self.init()
    self.VM = viewModel
  }
}
