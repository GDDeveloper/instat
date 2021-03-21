
import Foundation

class URLPath {
  
  enum Path: String {

    case non = ""
    case test
    case data
    case videoUrls = "video-urls"
  }
  enum ChangePath {
    
    case non
    case getMath(Path, Path)
    case getVideoUrls(Path, Path)
  }
  
  public func create(change: ChangePath) -> String {
    //create Change Path for url
    switch change {
      //MARK: - Non
      case .non:
        return ""
      case .getMath(let text, let data):
        return ["", text.rawValue, data.rawValue].joined(separator: "/")
      case .getVideoUrls(let text, let videoUrls):
        return ["", text.rawValue, videoUrls.rawValue].joined(separator: "/")
    }
  }
}

