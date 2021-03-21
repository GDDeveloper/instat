
import UIKit
import AVKit

class GDPlayerControl: NSObject {
  
  //MARK: - Private
  private var playerLayer = AVPlayerLayer()
  
  //MARK: - Public
  public var isPlay = false
  public var isMute = false
  public var player : AVPlayer!
  public var observerСlosure   : Сlosure<Any>!
  public var observerReady     : Сlosure<Bool>!
  public var observerReturnTime: Сlosure<CMTime>!
  public var observerEnd       : СlosureEmpty!
  
  
  public func play(){
    self.player?.play()
    self.isPlay = true
  }
  public func pause(){
    self.player?.pause()
    self.isPlay = false
  }
  public func setup(player: AVPlayer) {
    self.player = player
    self.setupPlayerTimeObserver()
    self.setupReadyPlayObserver()
  }
  private func setupReadyPlayObserver(){
    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [unowned self] (timer) in
      if self.playerLayer.isReadyForDisplay {
        self.observerReady?(true)
        timer.invalidate()
      }
    self.observerReady?(false)
    }
  }
  private func setupPlayerTimeObserver(){
    player.addObserver(self, forKeyPath: "currentItem.loadedTimeRanges", options: .new, context: nil)
    let interval = CMTime(value: 1, timescale: 2)
    player.addPeriodicTimeObserver(forInterval: interval, queue: nil) { (time) in
      self.observerReturnTime?(time)
      //End
      let currentSeconds = Float(CMTimeGetSeconds(time))
      let totalSeconds   = self.player.duration()?.seconds ?? 0
      let sliderValue    = Float(currentSeconds / totalSeconds)
      guard sliderValue == 1.0 else { return }
      self.observerEnd?()
    }
  }
  override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
    self.observerСlosure?(change as Any)
  }
}
