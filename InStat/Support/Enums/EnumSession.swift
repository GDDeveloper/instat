
import UIKit

//Result session
enum SessionResult {
  case data(Data)
  case error(Error?)
}
//Result session data
enum SessionDataResult {
  case data(Any)
  case error(Error?)
}
//Result session data
enum RequestResult {
  case object(Any)
  case error(Error?)
}
//Firebase session data
enum FirebaseResult {
  case object(Any)
  case error(Error?)
}
//Result Decode JSON
enum DecodeResult {
  case json(Decodable)
  case error(Error?)
}
//Result Get Picture for URL
enum PictureSessionResult {
  case picture(UIImage)
  case error(Error?)
}
//Result Network Services
enum ServerResult {
  case object(Any)
  case error(Error?)
}

