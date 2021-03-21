
import Foundation


//MARK:- RESULTS CLOSURE
typealias ClousurePictureSession = ((PictureSessionResult) -> Void)
typealias ClousureServerResult   = ((ServerResult) -> Void)
typealias ClousureDecode         = ((DecodeResult) -> Void)
typealias ClousureSession        = ((SessionResult) -> Void)
typealias ClousureSessionData    = ((SessionDataResult) -> Void)
typealias ClousureRequest        = ((RequestResult) -> Void)
typealias ClousureResultFB       = ((FirebaseResult) -> Void)

//MARK: - CLOUSURES
typealias СlosureReturn<T>      = (() -> T)
typealias Сlosure<T>            = ((T) -> Void)
typealias СlosureEmpty          = (() -> Void)
typealias СlosureTwo<T, G>      = ((T, G) -> Void)
typealias СlosureAny            = ((Any?) -> Void)

//MARK: - CUSTOM TYPE
typealias Header    = [String: String]
typealias ReturnURL = (string: String?, URL: URL?)


