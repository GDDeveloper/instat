
import Foundation

//УРЛ для получения данных матча
class URLGetMatch: URLCreatoble {
  
  private var urlPath   = URLPath()
  private var urls      = URLs()
  private var customURL = URLCustom()
  
  public func url(_ type: URLType.Types) -> ReturnURL? {
    
    switch type {
      case .GetMatch:
        let custom = self.customURL.create(type: .init(scheme: .https, host: .Static(.inStat), changePath: .getMath(.test, .data)))
        return (custom.string, custom.URL)
      default:
         return nil
    }
  }
}
