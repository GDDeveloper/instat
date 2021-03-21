
import UIKit

struct MainData {
	
  let matchData: DECMatchData!
}

struct GetMatchParams {
  
  let sportID: Int!
  let matchID: Int! 
  
  init(sportID: Int, matchID: Int) {
    self.sportID = sportID
    self.matchID = matchID
  }
}
   
