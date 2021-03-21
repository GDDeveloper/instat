
import UIKit

extension String {
  
  public func heightText(plus: CGFloat) -> CGFloat {
    let width : CGFloat = 200
    let height: CGFloat = 200
    let size = CGSize(width: width, height: height)
    let atributes  = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)]
    let options    = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
    let heightView = self.boundingRect(with: size,
                                       options: options,
                                       attributes: atributes,
                                       context: nil).height
    return heightView + plus
  }
}

