
import Foundation

struct DECTournament {
  
  let id        : Int!
  let nameEng   : String!
  let nameRus   : String!
  
  enum CodingKeys: String, CodingKey {
    
    case id
    case nameEng = "name_eng"
    case nameRus = "name_rus"
  }
}
extension DECTournament: Decodable {
  
  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    
    self.id      = try? values.decode(Int?.self   , forKey: .id)
    self.nameEng = try? values.decode(String?.self, forKey: .nameEng)
    self.nameRus = try? values.decode(String?.self, forKey: .nameRus)
  }
}
