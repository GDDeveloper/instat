import UIKit
import Protocols

class ServerVideoPlay: VMManager {
  
  //MARK: - Public variable
  public var VM: VideoPlayViewModel!
  
  public func getVideoURLs(params: GetVideoURLsParams, completion: @escaping Сlosure<[DECVideoUrl]?>){
    //Request
    self.VM.server.request(requestType: POSTGetVideoURLs(), data: params) { [weak self] (serverResult) in
      guard let self = self else { return }
      //Response
      switch serverResult {
        case .error(let error):
          guard let error = error else { return }
          print("Error server data: class: ServerVideoPlay ->, function: getVideoURLs -> data: [DECVideoUrl]? ->, description: ", error.localizedDescription)
          AlertEK.dеfault(title: .error, message: .noJSON){
            self.getVideoURLs(params: params, completion: completion)
          }
        //Susses
        case .object(let object):
          let videoUrls = object as? [DECVideoUrl]
          completion(videoUrls)
          print("Successful data: class: ServerVideoPlay ->, function: getVideoURLs ->, data: [DECVideoUrl]?")
          
      }
    }
  }
}
//MARK: - Initial
extension ServerVideoPlay {
  
  //MARK: - Inition
  convenience init(viewModel: VideoPlayViewModel) {
    self.init()
    self.VM = viewModel
  }
}


