
import UIKit

extension MainViewController {
  
  @IBAction func pushVideoPlayVC(button: UIButton){
    self.viewModel.managers.logic.pushVideoPlayVC()
  }
}
