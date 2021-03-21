
import Foundation


//Запрос на получения видео урлов определенного матча
class POSTGetVideoURLs: Requestoble {
	
  private var urls       = URLs()
  private var parameters = URLParameters()
  private var headers    = URLHeaders()
  private var jsonDecode = JSONDecode()
  private var urlBody    = URLBody()
  
  public func request(data: Any?, completion: @escaping ClousureRequest) {
  
    let params  = data as! GetVideoURLsParams
    let body    = self.urlBody.create(type: .getVideoURLs(sportID: params.sportID, matchID: params.matchID))
    let url     = self.urls.create(type: .GetVideoURLs)?.URL
    let header  = self.headers.create(type: .appJson)
    
    //Request
    self.jsonDecode.decode(jsonType: [DECVideoUrl].self, url: url, header: header, body: body, httpMethod: .post) { (decodeResult) in
      //Responce
      switch decodeResult {
        //Error
        case .error(let error):
          completion(.error(error))
        //Susses
        case .json(let object):
          if let videoUrls = object as? [DECVideoUrl] {
          completion(.object(videoUrls))
        }
      }
    }
  }
}
