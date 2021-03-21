import UIKit

class VideoPlayViewController: UIViewController {
  
  //MARK: - ViewModel
  public var viewModel: VideoPlayViewModel!
  
  //MARK: - Public variable
  override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    get {
      return .landscape
    }
  }
  override var shouldAutorotate: Bool {
    get {
      return false
    }
  }
  
  //MARK: - Outlets
 
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    self.initViewModel()
    self.viewModel.viewDidLoad()
  }
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    self.viewModel.viewWillDisappear()
  }
  private func initViewModel(){
    self.viewModel = VideoPlayViewModel(viewController: self)
  }
}
