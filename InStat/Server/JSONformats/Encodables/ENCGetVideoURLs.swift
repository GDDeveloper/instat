
import Foundation

struct ENCGetVideoURLs: Encodable {
  
  let match_id: Int!
  let sport_id: Int!
  
  init(sportID: Int, matchID: Int) {
    self.match_id = matchID
    self.sport_id = sportID
  }
    
}
