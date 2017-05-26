import UIKit

func getCurrentYear() -> String {
    let date = Date()
    let calendar = Calendar.current

    return String(calendar.component(.year, from: date))
}

func getLetterAtIndex(string: String, location: Int) -> Character {
    let index = string.index(string.startIndex, offsetBy: location)

    return string[index]
}

func getCurrentTime() -> String {
    let date = Date()
    let formatter = DateFormatter()

    formatter.dateStyle = .none
    formatter.timeStyle = .medium

    let timeString = formatter.string(from: date)

    return timeString
}
