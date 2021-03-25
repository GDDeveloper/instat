
import Foundation

class VideoPlayManagers: VMManagers {
  
  let setup    : SetupVideoPlay!
  let server   : ServerVideoPlay!
  let present  : PresentVideoPlay!
  let logic    : LogicVideoPlay!
  let animation: AnimationVideoPlay!
  let router   : RouterVideoPlay!
  //
  init(viewModel: VideoPlayViewModel) {
    
    self.setup     = SetupVideoPlay(viewModel: viewModel)
    self.server    = ServerVideoPlay(viewModel: viewModel)
    self.present   = PresentVideoPlay(viewModel: viewModel)
    self.logic     = LogicVideoPlay(viewModel: viewModel)
    self.animation = AnimationVideoPlay(viewModel: viewModel)
    self.router    = RouterVideoPlay(viewModel: viewModel)
  }
}

