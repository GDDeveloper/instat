import UIKit
import Lottie
import SnapKit

class GDLottieSetup {
  
  private let view          : UIView!
  private var animationView : AnimationView!
  private var animation     : Animation!
  
  public var calbackPlay: Сlosure<Bool>!
  
  public func added(name: String, loopMode: LottieLoopMode, speed: CGFloat = 1){
    self.animation     = Animation.named(name)
    self.animationView = AnimationView(animation: animation)
    
    animationView.contentMode = .scaleAspectFit
    animationView.animation   = animation
    animationView.loopMode    = loopMode
    
    animationView.animationSpeed = speed
    view.insertSubview(animationView, at: 0)
  }
  public func setup(pading: CGFloat = 0){
    animationView.snp.makeConstraints { (animationViewSK) in
      animationViewSK.edges.equalTo(view).inset(pading)
    }
  }
  public func play(){
    animationView.play { (finish) in
      self.calbackPlay?(finish)
    }
  }
  public func remove(){
    self.animationView?.removeFromSuperview()
  }
  public func playProgress(fromProgress: AnimationProgressTime, toProgress: AnimationProgressTime){
    animationView.play(fromProgress: fromProgress, toProgress: toProgress, loopMode: .playOnce)
  }
  public func stop(){
    self.animationView.currentProgress = 0
  }
  public func progress(velue: CGFloat){
    self.animationView.currentProgress = velue
  }
  enum LottieName: String {
    
    case loadingInStat
  }
  init(view: UIView) {
    self.view = view
  }
}
