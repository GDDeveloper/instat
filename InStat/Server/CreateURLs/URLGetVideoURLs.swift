
import Foundation

//УРЛ для получения урлов с видео определенного матча
class URLGetVideoURLs: URLCreatoble {
  
  private var urlPath   = URLPath()
  private var urls      = URLs()
  private var customURL = URLCustom()
  
  public func url(_ type: URLType.Types) -> ReturnURL? {
    
    switch type {
      case .GetVideoURLs:
        let custom = self.customURL.create(type: .init(scheme: .https, host: .Static(.inStat), changePath: .getMath(.test, .videoUrls)))
        return (custom.string, custom.URL)
      default:
         return nil
    }
  }
}
