import UIKit
import Protocols

class ServerMain: VMManager {
  
  //MARK: - Public variable
  public var VM: MainViewModel!
  
  public func getMatchData(params: GetMatchParams, completion: @escaping Сlosure<DECMatchData>){
    //Request
    self.VM.server.request(requestType: POSTGetMatchData(), data: params) { [weak self] (serverResult) in
      guard let self = self else { return }
      //Response
      switch serverResult {
        case .error(let error):
          guard let error = error else { return }
          print("Error server data: class: ServerMain ->, function: getMatch -> data: DECGetMatch ->, description: ", error.localizedDescription)
          AlertEK.dеfault(title: .error, message: .noJSON){
            self.getMatchData(params: params, completion: completion)
          }
        //Susses
        case .object(let object):
          let getMatch = object as! DECMatchData
          completion(getMatch)
          print("Successful data: class: ServerMain ->, function: getMatch ->, data: DECGetMatch")
          
      }
    }
  }
}
//MARK: - Initial
extension ServerMain {
  
  //MARK: - Inition
  convenience init(viewModel: MainViewModel) {
    self.init()
    self.VM = viewModel
  }
}


