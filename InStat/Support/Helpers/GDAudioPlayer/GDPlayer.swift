
import UIKit
import AVKit

class GDPlayer: UIView {
  
  //MARK: - Private
  private var playerLayer = AVPlayerLayer()
  private let urlPlayers  = GDURLPlayers()
  private let setupPlayer = GDSetupPlayer()
  
  //MARK: - Public
  public var player         = AVPlayer()
  public let control        = GDPlayerControl()
  public var videoGravity   : AVLayerVideoGravity    = .resizeAspect
  public var contentsGravity: CALayerContentsGravity = .resizeAspect
  
  public func load(urlPlayer: TypePlayerURL, typeURL: TypeURL = .mp4){
    //create url video
    guard let url = self.urlPlayers.change(urlPlayer: urlPlayer, typeURL: typeURL) else { return }
    //create video
    self.player      = AVPlayer(url: url)
    self.playerLayer = AVPlayerLayer(player: self.player)
    //add video player
    self.layer.addSublayer(self.playerLayer)
    //setup video control
    self.control.setup(player: self.player)
  }
  
  override func layoutSubviews() {
     super.layoutSubviews()
     self.playerLayer.frame           = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
     self.playerLayer.videoGravity    = self.videoGravity
     self.playerLayer.contentsGravity = self.contentsGravity
   }
}
