
import Foundation

class URLs {
  
  private let type  = URLType()
  private let api   = URLAPI()
  public let string = URLString()
  
 
  public func get(type: URLAPI.Types) -> ReturnURL {
    return self.api.get(type: type)
  }
  public func create(type: URLType.Types) -> ReturnURL? {
    return self.type.set(type).url(type)
  }
}

