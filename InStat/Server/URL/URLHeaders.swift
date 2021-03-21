
import Foundation

class URLHeaders {
	
	private var keyValueHeader = [HeaderKey: HeaderValue]()
	private var keyHeader      = [HeaderKey: String]()
  private let token          = "no token"
	
	enum HeaderType {
		
		case appUrlEnc
		case appJson
		case jsonEnc
		case authorization
		case authorization_appJson(String)
		case authorization_appUrlEnc
    case uploadPhoto(String, String)
	}
	enum HeaderKey: String {
		
		case Authorization
		case contentType = "Content-Type"
	}
	enum HeaderValue: String {
		
		case appUrlEnc = "application/x-www-form-urlencoded"
		case appJson   = "application/json"
		case jsonEnc   = "application/x-www-form-urlencoded|application/json"
	}
	public func create(type: HeaderType) -> Header {
		switch type {
			//MARK: - AppJson
			case .appJson:
				self.keyValueHeader = [.contentType: .appJson]
				return self.headerKeyValue(dictionary: keyValueHeader)
      
			//MARK: - AppUrlEnc
			case .appUrlEnc:
				self.keyValueHeader = [.contentType: .appUrlEnc]
				return self.headerKeyValue(dictionary: keyValueHeader)
      
			//MARK: - JsonEnc
			case .jsonEnc:
				self.keyValueHeader = [.contentType: .jsonEnc]
				return self.headerKeyValue(dictionary: keyValueHeader)
      
			//MARK: - Authorization
			case .authorization:
				self.keyHeader = [.Authorization: self.token]
				return self.headerKey(dictionary: self.keyHeader)
      
			//MARK: - Authorization
			case .authorization_appJson(let token):
				self.keyHeader = [.Authorization: (token + self.token), .contentType: (HeaderValue.appJson.rawValue)]
				return self.headerKey(dictionary: self.keyHeader)
      
			//MARK: - Authorization_appUrlEnc
			case .authorization_appUrlEnc:
				self.keyHeader = [.Authorization: self.token, .contentType: HeaderValue.appUrlEnc.rawValue]
				return self.headerKey(dictionary: self.keyHeader)
      
      case .uploadPhoto(let token, let boundary):
        //let boundary = "Boundary-\(boundary)"
        self.keyHeader = [.Authorization: (token + self.token), .contentType: "multipart/form-data; boundary=\(boundary)"]
        return self.headerKey(dictionary: self.keyHeader)
		}
	}
	
	//MARK: - Private functions
	private func headerKey(dictionary: [HeaderKey: String]) -> Header {
		let key   = dictionary.map { $0.key.rawValue}
		let value = dictionary.map { $0.value}
		let header = Header(uniqueKeysWithValues: zip(key, value))
		return header
	}
	//MARK: - Private functions
	private func headerKeyValue(dictionary: [HeaderKey: HeaderValue]) -> Header {
		let key   = dictionary.map { $0.key.rawValue}
		let value = dictionary.map { $0.value.rawValue}
		let header = Header(uniqueKeysWithValues: zip(key, value))
		return header
	}
}

