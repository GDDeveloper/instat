
import Foundation
import UIKit

class GDURLPlayers {
  
  private var videoPathURL: URL! = nil
  
  public func change(urlPlayer: TypePlayerURL, typeURL: TypeURL = .mp4) -> URL? {
    
    switch urlPlayer {
      
      case .directory(let directory):
        if let urlString = directory {
          self.videoPathURL = URL(fileURLWithPath: urlString, isDirectory: true)
      }
      case .network(let urlString):
        if let urlString = urlString {
          self.videoPathURL = URL(string: urlString)
      }
      case .bundle(let urlPath):
        if let videoPath = Bundle.main.path(forResource: urlPath, ofType: typeURL.rawValue) {
          self.videoPathURL = URL(fileURLWithPath: videoPath)
        } else {
          return nil }
      }
  return videoPathURL
  }
}
