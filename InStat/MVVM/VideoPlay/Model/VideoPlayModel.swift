
import UIKit

enum VideoPlayModel {
	
	case loading
	case getData(GetVideoURLsParams)
	case errorHandler([DECVideoUrl]?)
	case presentData(VideoPlayData)
	
	
}

