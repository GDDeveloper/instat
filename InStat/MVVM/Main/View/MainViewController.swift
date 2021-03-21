import UIKit

class MainViewController: UIViewController {
  
  //MARK: - ViewModel
  public var viewModel: MainViewModel!
  
  //MARK: - Public variable
  override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    get {
      return .portrait
    }
  }
  override var shouldAutorotate: Bool {
    get {
      return false
    }
  }
  
  //MARK: - Outlets
  @IBOutlet weak var nameTeamOneLabel    : UILabel!
  @IBOutlet weak var nameTeamTwoLabel    : UILabel!
  @IBOutlet weak var scoreTeamOneLabel   : UILabel!
  @IBOutlet weak var scoreTeamTwoLabel   : UILabel!
  @IBOutlet weak var dateTournamentLabel : UILabel!
  @IBOutlet weak var titleTournamentLabel: UILabel!
  @IBOutlet weak var playVideoButton     : UIButton!
  @IBOutlet weak var commonView          : UIView!
  
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    self.initViewModel()
    self.viewModel.viewDidLoad()
  }
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
   
  }
  private func initViewModel(){
    self.viewModel = MainViewModel(viewController: self)
  }
}
