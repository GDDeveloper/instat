
import Foundation

class URLType {
  
  var creatoble: URLCreatoble!
  
  public func set(_ type: Types) -> URLCreatoble {
    switch type {
      case .none:
        return creatoble
      case .GetMatch:
        return URLGetMatch()
      case .GetVideoURLs:
        return URLGetVideoURLs()
    }
  }
  enum Types {
    
    case none
    case GetMatch
    case GetVideoURLs
  }
}

