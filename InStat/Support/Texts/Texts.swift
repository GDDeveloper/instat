import UIKit

class Texts {
  static func text(_ text: Project) -> String {
    return text.rawValue
  }
  enum Title: String, CaseIterable {
    
    case empty        = ""
    case error        = "ОШИБКА"
    case noNetwork    = "НЕТ ИНТЕРНЕТА"
    case noMessage    = "НЕТ СООБЩЕНИЙ"
    case sendEmail    = "ОТПРАВЛЕН"
    case save         = "Сохранен"
    case registration = "Регистрация"
    case information  = "Информация"
    case install      = "Установить"
    case addPhoto     = "Изменить фото"
    case purchases    = "Покупки"
    case signOut      = "Выйти"
    
    private func localizedString() -> String {
      return NSLocalizedString(self.rawValue, comment: "")
    }
    
    func getTextFor(title: Title?) -> String {
      return title!.localizedString()
    }
  }
  enum Message: String, CaseIterable {
    
    case empty          = ""
    case noNetwork      = "Отсутствует подключение к сети, подключите Ваше устройство и попробуйте снова"
    case noJSON         = "Извините произошла ошибка получения данных"
    case noMessage      = "У Вас нет не одного сообщения"
    case emptyField     = "Введите корректные данные и попробуйте снова"
    case sendEmail      = "Ваш email отправлен"
    case tryEnded       = "Количество попыток закончилось"
    case registerRequire = "Для этого действия требуется регистрация"
    case error           = "Произошла ошибка попробуйте позже"
    case errorUnknown   = "Неизвестная ошибка"
    
    private func localizedString() -> String {
      return NSLocalizedString(self.rawValue, comment: "")
    }
    
    func getTextFor(message: Message?) -> String {
      return message!.localizedString()
    }
  }
  enum MessageCustom {
    case message(String)
  }
  enum Worning {
    case non
  }
  
  enum Project: String {
    
    case empty
    
    
    private func localizedString() -> String {
      return NSLocalizedString(self.rawValue, comment: "")
    }
    func getTextFor(_ text: Project?) -> String {
      return text!.localizedString()
    }
  }
}
enum TextType {
  
  case Title
  case Message
  case Project
}
enum TextAlert: String, CaseIterable {
  
  case empty
  case noJSON
  case noNetwork
  case noSenderEmail
  case yesSenderEmail
  case inputEmail
  case emptyField
  case noMessage
  case sendEmail
  case tryEnded
  case saveLike
  case registerRequire
  case changeTour
  
}
enum TextSimple {
  case some
}



