
import Foundation

struct ENCGetMatch: Encodable {
  
  let proc   = "get_match_info"
  let params : ENCGetMatchParams!
}

struct ENCGetMatchParams: Encodable {
  
  let _p_sport   : Int!
  let _p_match_id: Int!
  
  init(sportID: Int, matchID: Int) {
    self._p_match_id = matchID
    self._p_sport    = sportID
  }
}
   
