import UIKit

class LoadingViewController: UIViewController {
  
  //MARK: - ViewModel
  public var viewModel: LoadingViewModel!
  
  //MARK: - Public variable
  
  
  //MARK: - Outlets
  @IBOutlet weak var lottieView: UIView!
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    self.initViewModel()
    
  }
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.viewModel.viewDidAppear()
  }
  private func initViewModel(){
    self.viewModel = LoadingViewModel(viewController: self)
  }
}
