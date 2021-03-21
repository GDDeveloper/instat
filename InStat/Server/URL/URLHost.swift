
import Foundation

class URLHost {
  
  enum Host: String {

    case non
    case inStat = "api.instat.tv"
  }
  enum Types {
    case Static(Host)
    case String(String?)
    case non
  }
  public func create(_ type: URLHost.Types) -> String {
    switch type {
      case .Static(let host):
        return host.rawValue
      case .String(let stringHost):
        return stringHost ?? ""
      case .non:
        return ""
    }
  }
}
