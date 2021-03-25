
import UIKit

class PresentMain: VMManager {
  
  //MARK: - Public variable
  public var VM: MainViewModel!
  
  public func controllerData(mainData: MainData){
  
    self.VM.VC.nameTeamOneLabel.text = mainData.matchData.teamOne.nameRus
    self.VM.VC.nameTeamTwoLabel.text = mainData.matchData.teamTwo.nameRus
    
    self.VM.VC.scoreTeamOneLabel.text = String(mainData.matchData.teamOne.score)
    self.VM.VC.scoreTeamTwoLabel.text = String(mainData.matchData.teamTwo.score)
    
    self.VM.VC.dateTournamentLabel.text  = String(mainData.matchData.dateFormat ?? "")
    self.VM.VC.titleTournamentLabel.text = String(mainData.matchData.tournament.nameRus)
  }
}
//MARK: - Initial
extension PresentMain {
  
  //MARK: - Inition
  convenience init(viewModel: MainViewModel) {
    self.init()
    self.VM = viewModel
  }
}

