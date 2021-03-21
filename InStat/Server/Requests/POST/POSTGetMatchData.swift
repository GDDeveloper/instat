
import Foundation


//Запрос на получения данных для матча
class POSTGetMatchData: Requestoble {
	
	private var urls       = URLs()
	private var parameters = URLParameters()
	private var headers    = URLHeaders()
	private var jsonDecode = JSONDecode()
  private var urlBody    = URLBody()
	
	public func request(data: Any?, completion: @escaping ClousureRequest) {
  
    let params  = data as! GetMatchParams
    let body    = self.urlBody.create(type: .getMatch(sportID: params.sportID, matchID: params.matchID))
    let url     = self.urls.create(type: .GetMatch)?.URL
    let header  = self.headers.create(type: .appJson)
    
		//Request
    self.jsonDecode.decode(jsonType: DECMatchData.self, url: url, header: header, body: body, httpMethod: .post) { (decodeResult) in
			//Responce
			switch decodeResult {
				//Error
				case .error(let error):
					completion(.error(error))
				//Susses
				case .json(let object):
          if let getMatch = object as? DECMatchData {
					completion(.object(getMatch))
        }
			}
		}
	}
}
