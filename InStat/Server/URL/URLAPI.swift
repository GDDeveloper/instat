
import Foundation

class URLAPI {
  
  private let mainURL = "http://157.230.26.144"
  
  enum Types {
    case api
    case webSocket
    case store(String?)
    case urlString(URLString.Url)
  }
  
  func get(type: Types) -> ReturnURL {
    switch type {
      case .api:
        let stringURL = ""
        let url       = URL(string: "")
        return (stringURL, url)
      case .webSocket:
        let stringURL = ""
        let url       = URL(string:"")
        return (stringURL, url)
      case .store(url: let url):
        guard let urlNotNil = url else { return ("", nil)}
        let stringURL = [self.mainURL, urlNotNil].joined()
        let decodeURL = [self.mainURL, urlNotNil].joined().decodedUrl()
        let url       = URL(string:  decodeURL)
        return (stringURL, url)
      case .urlString(let urlString):
        let stringURL = urlString.rawValue
        let url       = URL(string: urlString.rawValue)
        return (stringURL, url)
    }
  }
}
