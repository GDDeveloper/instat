
import UIKit

class ErrorHandlerVideoURLs {
   
  public func check(videoURLs: [DECVideoUrl]?) -> Bool {
    do {
      try self.error(videoURLs: videoURLs)
    } catch HandlerError.Success {
      return true
    } catch HandlerError.Nil {
      AlertEK.customText(title: .error, message: .message(HandlerError.Nil.rawValue))
      return false
    } catch HandlerError.Empty {
      AlertEK.customText(title: .error, message: .message(HandlerError.Empty.rawValue))
      return false
    } catch {
      AlertEK.dеfault(title: .error, message: .errorUnknown)
      return false
    }
  return false
  }
  private func error(videoURLs: [DECVideoUrl]?) throws  {
    
    //Ошибка получения
    guard let videoURLs = videoURLs else { throw HandlerError.Nil }
    

    //Сообщения получены , но их нет
    if videoURLs.isEmpty {
      throw HandlerError.Empty
    }
    
    //Ошибки не обнаружены
    throw HandlerError.Success
  }
  
  private enum HandlerError: String, Error {
    
    case Nil     = "Ошибка получения урлов"
    case Empty   = "Получен , но пустой"
    case Success
  }
}


