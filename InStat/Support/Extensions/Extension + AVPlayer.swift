//
import AVKit

extension AVPlayer {
  
  public func duration() -> (second: Int, minuts: Int, seconds: Float)? {
    if let duration = self.currentItem?.duration {
      let seconds = CMTimeGetSeconds(duration)
      let second = Int(seconds) % 60
      let minuts = Int(seconds) / 60
      return (second, minuts, Float(seconds))
    }
    return nil
  }
}
