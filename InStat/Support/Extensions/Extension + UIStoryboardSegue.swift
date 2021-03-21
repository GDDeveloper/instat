
import UIKit

extension UIStoryboardSegue {
	
	func ID() -> SgID? {
		for sgID in SgID.allCases {
			
			if sgID.rawValue == self.identifier {
				return sgID
			}
		}
		return nil
	}
	
	enum SgID: String, CaseIterable {
		
		case CatalogVC_ToursVC
		case ProfileVC_ProfileTVC
		case AuthNumberVC_InputSMSVC
	}
}
