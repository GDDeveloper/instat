
import Foundation
import Protocols

class MainManagers: VMManagers {
  
  let setup    : SetupMain!
  let server   : ServerMain!
  let present  : PresentMain!
  let logic    : LogicMain!
  let animation: AnimationMain!
  let router   : RouterMain!
  
  init(viewModel: MainViewModel) {
    
    self.setup     = SetupMain(viewModel: viewModel)
    self.server    = ServerMain(viewModel: viewModel)
    self.present   = PresentMain(viewModel: viewModel)
    self.logic     = LogicMain(viewModel: viewModel)
    self.animation = AnimationMain(viewModel: viewModel)
    self.router    = RouterMain(viewModel: viewModel)
  }
}

