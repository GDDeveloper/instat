
import Foundation

class LoadingViewModel: VMManagers {
	
	public var loadingModel: LoadingModel = .loading {
		didSet{
			self.modalLogic()
		}
	}
  
  //MARK: - Public variable
  public var managers   : LoadingManagers!
  public var VC         : LoadingViewController!
  public var lottieSetup: GDLottieSetup!
  
  public func viewDidAppear() {
    self.managers.setup.lottieSetup()
  }
  
  public func modalLogic(){
    
    switch self.loadingModel {
      //1 - Загрузка
      case .loading:
        print("")
      //2 - Получаем данные
      case .getData:
        print("")
      //3 - Проверяем на ошибки
      case .errorHandler:
        print("")
      //4 - Презентуем данные
      case .presentData(_):
        print("")
    }
  }
}
//MARK: - Initial
extension LoadingViewModel {
  
  convenience init(viewController: LoadingViewController) {
    self.init()
    self.VC       = viewController
    self.managers = LoadingManagers(viewModel: self)
  }
}
