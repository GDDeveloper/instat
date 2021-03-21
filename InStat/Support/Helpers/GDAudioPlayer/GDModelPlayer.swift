
import Foundation

enum TypePlayerURL {
  
  case directory(String?)
  case network(String?)
  case bundle(String?)
}
enum TypeURL: String {
  case mp4
  case mp3
}
//public func changeValueSlider(cell: MainCollectionCell, slider: UISlider){
//  let slider  = slider.value
//  let seconds = cell.player.player.duration()?.seconds ?? 0
//  let value   = CMTimeValue(slider * seconds)
//  let seeTime = CMTime(value: value, timescale: 1)
//  cell.player.player.seek(to: seeTime)
//}
//public func videoTimeEnd(cell: MainCollectionCell){
//  guard cell.player.control.isPlay else { return }
//  let second  = cell.player.player.duration()?.second ?? 0
//  let minutes = cell.player.player.duration()?.minutes ?? 0
//  cell.timeEndLabel.text = String(format: .format(.two), minutes, second)
//}
//public func videoTimeStart(cell: MainCollectionCell, currentTime: CMTime){
//  guard cell.player.control.isPlay else { return }
//  let seconds = CMTimeGetSeconds(currentTime)
//  let second  = Int(seconds) % 60
//  let minutes = Int(seconds) / 60
//  cell.timeBeginLabel.text = String(format: .format(.two), minutes, second)
//}
//public func videoTimeSlider(cell: MainCollectionCell, currentTime: CMTime){
//  let currentSeconds = Float(CMTimeGetSeconds(currentTime))
//  let totalSeconds   = cell.player.player.duration()?.seconds ?? 0
//  let sliderValue    = Float(currentSeconds / totalSeconds)
//  cell.timeSlider.value = sliderValue
//  guard sliderValue == 1.0 else { return }
//  cell.timeSlider.value = 0
//  cell.player.control.pause()
//}


//public func addObserverReturnTimeVideoPlayer(cell: MainCollectionCell){
//  cell.player.control.observerReturnTime = { (time) in
//    //3 - set value slider
//    self.VM.managers.present.videoTimeSlider(cell: cell, currentTime: time)
//    //4 - set time begin label
//    self.VM.managers.present.videoTimeStart(cell: cell, currentTime: time)
//    //5 - set time end label
//    self.VM.managers.present.videoTimeEnd(cell: cell)
//  }
//}

//public func readyVideoPlay(cell: BrandCardVideoTableCell){
//  cell.videoView.controll.observerReady = { (ready) in
//    if ready {
//      cell.playPauseButton.isHidden = false
//      cell.videoView.isUserInteractionEnabled = true
//    }
//  }
//}
//public func player(){
//  self.VM.VC.player.load(urlPlayer: .network(self.VM.VC.detailData.artist?.trackURL), typeURL: .mp4)
//}
//public func playButton(){
//  self.VM.VC.playButton.setBackgroundImage(UIImage.set(system: .pause), for: .normal)
//}
//public func playerEnd(){
//  self.VM.VC.player.control.observerEnd = {
//    self.VM.VC.player.control.pause()
//    self.VM.VC.setupLottie.stop()
//  }
//}
//public func timeSlider(){
//  self.VM.VC.timeSlider.setThumbImage(#imageLiteral(resourceName: "videoSliderTime"), for: .normal)
//  self.VM.VC.timeSlider.setThumbImage(#imageLiteral(resourceName: "videoSliderTime"), for: .selected)
//  self.VM.VC.timeSlider.setThumbImage(#imageLiteral(resourceName: "videoSliderTime"), for: .highlighted)
//  self.VM.VC.timeSlider.value = 0
//}
//public func playPause(){
//  if self.VM.VC.player.control.isPlay {
//    self.VM.VC.player.control.pause()
//    self.VM.VC.setupLottie.stop()
//    self.VM.VC.playButton.setBackgroundImage(UIImage.set(system: .pause), for: .normal)
//  } else {
//    self.VM.VC.player.control.play()
//    self.VM.VC.setupLottie.play()
//    self.VM.VC.playButton.setBackgroundImage(UIImage.set(system: .play), for: .normal)
//  }
//}
//public func pause(){
//  self.VM.VC.player.control.pause()
//  self.VM.VC.setupLottie.stop()
//  self.VM.VC.playButton.setBackgroundImage(UIImage.set(system: .pause), for: .normal)
//}
