
func convertToInt(_ symbol: Character) -> Int {
    switch symbol {
    case "I":
        return 1
    case "V":
        return 5
    case "X":
        return 10
    case "L":
        return 50
    case "C":
        return 100
    case "D":
        return 500
    default:
        return 1000
    }
}