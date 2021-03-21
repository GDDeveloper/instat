
import UIKit

enum MainModel {
	
	case loading
	case getData(GetMatchParams)
	case errorHandler(DECMatchData?)
	case presentData(MainData)
	
	
}

