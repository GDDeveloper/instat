
import Foundation

struct DECVideoUrl {
  
  let name        : String!
  let matchID     : Int!
  let period      : Int!
  let serverID    : Int!
  let quality     : String!
  let folder      : String!
  let videoType   : String!
  let abc         : String!
  let startMS     : Int!
  let checksum    : Int!
  let size        : Int!
  let abcType     : String!
  let duration    : Int!
  let fps         : Int!
  let urlRoot     : String!
  let url         : String!
  var qualityVideo: QualityVideo!
  
  enum CodingKeys: String, CodingKey {
    
    case name      = "name"
    case matchID   = "match_id"
    case period    = "period"
    case serverID  = "server_id"
    case quality   = "quality"
    case folder    = "folder"
    case videoType = "video_type"
    case abc       = "abc"
    case startMS   = "start_ms"
    case checksum  = "checksum"
    case size      = "size"
    case abcType   = "abc_type"
    case duration  = "duration"
    case fps       = "fps"
    case urlRoot   = "url_root"
    case url       = "url"
    
  }
}
extension DECVideoUrl: Decodable {
  
  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    
    self.name         = try? values.decode(String?.self, forKey: .name     )
    self.matchID      = try? values.decode(Int?.self   , forKey: .matchID  )
    self.period       = try? values.decode(Int?.self   , forKey: .period   )
    self.serverID     = try? values.decode(Int?.self   , forKey: .serverID )
    self.quality      = try? values.decode(String?.self, forKey: .quality  )
    self.folder       = try? values.decode(String?.self, forKey: .folder   )
    self.videoType    = try? values.decode(String?.self, forKey: .videoType)
    self.abc          = try? values.decode(String?.self, forKey: .abc      )
    self.startMS      = try? values.decode(Int?.self   , forKey: .startMS  )
    self.checksum     = try? values.decode(Int?.self   , forKey: .checksum )
    self.size         = try? values.decode(Int?.self   , forKey: .size     )
    self.abcType      = try? values.decode(String?.self, forKey: .abcType  )
    self.duration     = try? values.decode(Int?.self   , forKey: .duration )
    self.fps          = try? values.decode(Int?.self   , forKey: .fps      )
    self.urlRoot      = try? values.decode(String?.self, forKey: .urlRoot  )
    self.url          = try? values.decode(String?.self, forKey: .url      )
    self.qualityVideo = QualityVideo(rawValue: self.quality)
  }
}

enum QualityVideo: String {
  
  case low    = "240"
  case easy   = "400"
  case middle = "720"
  case hight  = "1080"
}
