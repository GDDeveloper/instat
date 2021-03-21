
import UIKit

extension UIView {
  
  //MARK: - Set view corner radius
  public func cornerRadius(_ radius: CGFloat = 9, _ clipsToBounds: Bool = true){
    
    self.layer.cornerRadius  = radius
    self.clipsToBounds       = clipsToBounds
  }
  //MARK: - Set view shadow color
	public func shadowColor(color: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), radius: CGFloat = 9, sizeW: Int = 0, sizeH: Int = 0 ){
    
    self.layer.shadowColor   = color.cgColor
    self.layer.shadowRadius  = radius
    self.layer.shadowOpacity = 1
    self.layer.shadowOffset  = CGSize(width: sizeW, height: sizeH)
  }
   //MARK: - Set view border color
  public func borderColor(_ color: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), _ width: CGFloat = 1){
    
    self.layer.borderColor  = color.cgColor
    self.layer.borderWidth  = width
  }
  func pulsate(){
    
    let pulse = CASpringAnimation(keyPath: "transform.scale")
    //продолжительность
    pulse.duration        = 0.3
    //занчение движения
    pulse.fromValue       = 0.98
    pulse.toValue         = 1.0
    //mass
    pulse.mass            = 1.0
    //повтор
    pulse.autoreverses    = true
    pulse.repeatCount     = 999999986991104
    pulse.initialVelocity = 1.0
    pulse.damping         = 1.0
    layer.add(pulse, forKey: nil)
  }
  func flash() {
    
    let flash = CABasicAnimation(keyPath: "opacity")
    flash.duration = 0.5
    flash.fromValue = 1
    flash.toValue = 0.1
    flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    flash.autoreverses = true
    flash.repeatCount = 3
    
    layer.add(flash, forKey: nil)
  }
  func shake() {
    
    let shake = CABasicAnimation(keyPath: "position")
    shake.duration = 0.1
    shake.repeatCount = 2
    shake.autoreverses = true
    
    let fromPoint = CGPoint(x: center.x - 5, y: center.y)
    let fromValue = NSValue(cgPoint: fromPoint)
    
    let toPoint = CGPoint(x: center.x + 5, y: center.y)
    let toValue = NSValue(cgPoint: toPoint)
    
    shake.fromValue = fromValue
    shake.toValue = toValue
    
    layer.add(shake, forKey: "position")
  }
   //MARK: - Set nib file
  public func loadFromNib<T: UIView>() -> T {
    return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
  }
  
  public func loadNib() -> Self {
    let nib = Bundle.main.loadNibNamed(String(describing: Self.self), owner: nil, options: nil)?.first
    return nib as! Self
  }
}
