
import Foundation
import Protocols
import NVActivityIndicatorView

class MainViewModel: VMManagers {
	
	public var mainModel: MainModel = .loading {
		didSet{
			self.modalLogic()
		}
	}
  
  //MARK: - Public variable
  public var managers: MainManagers!
  public var VC      : MainViewController!
  public let server  = Server()
  public var loading : NVActivityIndicatorView!
  
  private let errorHandlerMatchData = ErrorHandlerMatchData()
  
  public func viewDidLoad() {
    self.managers.setup.setupLoading()
    self.mainModel = .loading
    self.managers.setup.addGradientCommonView()
    self.managers.setup.playVideoButton()
  }
  
  public func modalLogic(){
    
    switch self.mainModel {
      //1 - Загрузка
      case .loading:
        self.managers.logic.loading(show: true)
        self.managers.logic.getMatchData()
      //2 - Получаем данные
      case .getData(let params):
        self.managers.server.getMatchData(params: params) { (matchData) in
          //Обрабатываем ошибки
          self.mainModel = .errorHandler(matchData)
        }
      //3 - Проверяем на ошибки
      case .errorHandler(let matchData):
        guard self.errorHandlerMatchData.check(matchData: matchData) else {
          return
        }
        let mainData = MainData(matchData: matchData)
        self.mainModel = .presentData(mainData)
        
      //4 - Презентуем данные
      case .presentData(let mainData):
        self.managers.logic.loading(show: false)
        self.managers.present.controllerData(mainData: mainData)
    }
  }
}
//MARK: - Initial
extension MainViewModel {
  
  convenience init(viewController: MainViewController) {
    self.init()
    self.VC       = viewController
    self.managers = MainManagers(viewModel: self)
  }
}
