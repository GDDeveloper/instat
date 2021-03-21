
import Foundation
import Protocols

class LoadingManagers: VMManagers {
  
  let setup    : SetupLoading!
  let server   : ServerLoading!
  let present  : PresentLoading!
  let logic    : LogicLoading!
  let animation: AnimationLoading!
  let router   : RouterLoading!
  
  init(viewModel: LoadingViewModel) {
    
    self.setup     = SetupLoading(viewModel: viewModel)
    self.server    = ServerLoading(viewModel: viewModel)
    self.present   = PresentLoading(viewModel: viewModel)
    self.logic     = LogicLoading(viewModel: viewModel)
    self.animation = AnimationLoading(viewModel: viewModel)
    self.router    = RouterLoading(viewModel: viewModel)
  }
}

