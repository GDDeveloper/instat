
import UIKit

class Server {
	
	//MARK: - Public variable
	public let urls       = URLs()
	public let parameters = URLParameters()
	public let headers    = URLHeaders()
  
	//MARK: - Private variable
	private var requestoble : Requestoble!
	private let network     = Network()
	
	//MARK: - Request Server
  public func request(requestType: Requestoble, data: Any? = nil, completion: @escaping ClousureServerResult){
		
		//check network
		guard self.network.check() else { return }
		
		//request
    requestType.request(data: data) { (requestResult) in
			//responce
			switch requestResult{
				//susses
				case .object(let json):
					DispatchQueue.main.async {
						completion(.object(json))
				}
				//error
				case .error(let error):
					DispatchQueue.main.async {
						completion(.error(error))
				}
			}
		}
	}
}







