
import Foundation

struct DECMatchData {
  
  let tournament: DECTournament!
  let id        : Int!
  let teamOne   : DECTeam!
  let teamTwo   : DECTeam!
  var date      : String!
  let dateFormat: String!
  let calc      : Bool!
  let hasVideo  : Bool!
  let live      : Bool!
  let storage   : Bool!
  let sub       : Bool!
  let access    : Bool!
  
  enum CodingKeys: String, CodingKey {
    
    case calc       = "calc"
    case hasVideo   = "has_video"
    case live       = "live"
    case storage    = "storage"
    case sub        = "sub"
    case access     = "access"
    case teamOne    = "team1"
    case teamTwo    = "team2"
    case tournament = "tournament"
    case id         = "id"
    case date
  }
}
extension DECMatchData: Decodable {
  
  init(from decoder: Decoder) throws {
    
    let values = try decoder.container(keyedBy: CodingKeys.self)
    
    self.tournament = try? values.decode(DECTournament?.self, forKey: .tournament)
    self.id         = try? values.decode(Int?.self          , forKey: .id)
    self.teamOne    = try? values.decode(DECTeam?.self      , forKey: .teamOne)
    self.teamTwo    = try? values.decode(DECTeam?.self      , forKey: .teamTwo)
    self.calc       = try? values.decode(Bool?.self         , forKey: .calc)
    self.hasVideo   = try? values.decode(Bool?.self         , forKey: .hasVideo)
    self.live       = try? values.decode(Bool?.self         , forKey: .live)
    self.storage    = try? values.decode(Bool?.self         , forKey: .storage)
    self.sub        = try? values.decode(Bool?.self         , forKey: .sub)
    self.access     = try? values.decode(Bool?.self         , forKey: .access)
    self.date       = try? values.decode(String?.self       , forKey: .date)
    self.date.removeLast(4)
    self.dateFormat = date?.getDate(formatDate: .instate)?.getDateStaring(format: .dayMonthText)
  }
}






