import UIKit

func getLetterAtIndex(string: String, location: Int) -> Character {
    let index = string.index(string.startIndex, offsetBy: location)

    return string[index]
}
