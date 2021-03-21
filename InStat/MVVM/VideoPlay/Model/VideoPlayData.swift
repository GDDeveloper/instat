
import UIKit

struct VideoPlayData {
	
  let videoURLs: [DECVideoUrl]!
}

struct GetVideoURLsParams {
  
  let sportID: Int!
  let matchID: Int!
  
  init(sportID: Int, matchID: Int) {
    self.sportID = sportID
    self.matchID = matchID
  }
}
   
