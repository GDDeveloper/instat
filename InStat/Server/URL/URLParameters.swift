
import Foundation

class URLParameters: NSObject {
  
  private var queryKeyQueryValue  : [QueryKey: QueryValue]!
  private var queryKeyStringValue : [QueryKey: String]!
  private var stringKeyStringValue: [String: String]!
  
  private let messageSMS = "Ваш код для входа в приложение"
  
  enum QueryItemsType {
    case UserData
  }
  
  enum QueryKey: String {
    
    case key
    case login
    case password    = "psw"
    case numberSMS   = "phones"
    case messeageSMS = "mes"
    case smsID       = "id"
    case location
    case radius
    case rankby
    case sensor
    case types
    case input
    case language
  }
  enum QueryValue: String {
    
    case some
    case login    = "advplanet36"
    case password = "599247SiK40"
    case prominence
    case `true`
    case `false`
    case bakery
    case cities   = "(cities)"
    case ru
  }
  enum QueryValueString {
    
    case non
  }
  enum QueryKeyStringValueString {
    
    case non
  }
  enum DictionaryType {
    
    case QueryKeyQueryValue([QueryKey: QueryValue])
    case QueryKeyStringValue([QueryKey: String])
    case StringKeyStringValue([String: String])
  }
  public func cretae(queryItems: QueryItemsType, _ valueString: QueryValueString = .non, _ queryKeyStringValueString: QueryKeyStringValueString = .non) -> [URLQueryItem]? {
    switch queryItems {
      
      case .UserData:
        self.queryKeyStringValue = [.key: ""]
        return self.createQueryItems(dictionaryType: .QueryKeyStringValue(self.queryKeyStringValue))
    }
  }
  
  //MARK: - Create Query parameters for url
  private func createQueryItems(dictionaryType: DictionaryType) -> [URLQueryItem] {
    switch dictionaryType {
      case .QueryKeyQueryValue(let dictionary):
        return dictionary.map{ URLQueryItem(name: $0.rawValue, value: $1.rawValue) }
      case .QueryKeyStringValue(let dictionary):
        return dictionary.map{ URLQueryItem(name: $0.rawValue, value: $1) }
      case .StringKeyStringValue(let dictionary):
        return dictionary.map{ URLQueryItem(name: $0, value: $1) }
    }
  }
}


