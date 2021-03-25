
import Foundation
import AVKit

class VideoPlayViewModel: VMManagers {
	
	public var videoPlayModel: VideoPlayModel = .loading {
		didSet{
			self.modalLogic()
		}
	}
  
  //MARK: - Public variable
  public var managers        : VideoPlayManagers!
  public var VC              : VideoPlayViewController!
  public var playerController: AVPlayerViewController!
  public let server          = Server()
  public let errorHandlerVideoURLs =  ErrorHandlerVideoURLs()
  
  public func viewDidLoad() {
    self.managers.setup.playerController()
    self.managers.logic.getURLs()
   
  }
  public func viewWillDisappear() {
    self.managers.logic.pause()
  }
  
  public func modalLogic(){
    
    switch self.videoPlayModel {
      //1 - Загрузка
      case .loading:
        
        
        self.managers.logic.getURLs()
        
      //2 - Получаем данные
      case .getData(let params):
        self.managers.server.getVideoURLs(params: params) { (videoURLs) in
          //Обрабатываем ошибки
          self.videoPlayModel = .errorHandler(videoURLs)
        }
      //3 - Проверяем на ошибки
      case .errorHandler(let videoURLs):
        guard self.errorHandlerVideoURLs.check(videoURLs: videoURLs) else {
          return
        }
        let videoPlayData = VideoPlayData(videoURLs: videoURLs!)
        self.videoPlayModel = .presentData(videoPlayData)
        
      //4 - Презентуем данные
      case .presentData(let videoPlayData):
        
        self.managers.present.controllerData(videoPlayData: videoPlayData)
    }
  }
}
//MARK: - Initial
extension VideoPlayViewModel {
  
  convenience init(viewController: VideoPlayViewController) {
    self.init()
    self.VC       = viewController
    self.managers = VideoPlayManagers(viewModel: self)
  }
}
