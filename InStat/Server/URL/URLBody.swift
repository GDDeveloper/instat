
import UIKit

class URLBody {
  
  enum Types {
    
    case none
    case getMatch(sportID: Int, matchID: Int)
    case getVideoURLs(sportID: Int, matchID: Int)
  }
  
  public func create(type: Types?) -> Data? {
    guard let type = type else { return nil }
    switch type {
      case .none:
        return nil
      //Тело для получения данных матча
      case .getMatch(let sportID, let matchID):
        let params = ENCGetMatchParams(sportID: sportID,
                                       matchID: matchID)
        let encode = ENCGetMatch(params: params)
        let data = try? JSONEncoder().encode(encode)
        return data
        
      //Тело для получения урлов матча
      case .getVideoURLs(let sportID, let matchID):
        let encode = ENCGetVideoURLs(sportID: sportID,
                                    matchID: matchID)
        let data = try? JSONEncoder().encode(encode)
      return data
    }
  }
}
