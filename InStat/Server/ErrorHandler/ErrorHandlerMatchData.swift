
import UIKit

class ErrorHandlerMatchData {
   
  public func check(matchData: DECMatchData?) -> Bool {
    do {
      try self.error(matchData: matchData)
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
  private func error(matchData: DECMatchData?) throws  {
    
    //Ошибка получения
    guard let _ = matchData else { throw HandlerError.Nil }
    
    
    //Ошибки не обнаружены
    throw HandlerError.Success
  }
  
  private enum HandlerError: String, Error {
    
    case Nil     = "Ошибка получения данных матча"
    case Empty   = "Получен , но пустой"
    case Success
  }
}


