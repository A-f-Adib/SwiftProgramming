func simplifyPath(_ str : String) -> String {
    var stack = [String]()

    let tokenString = str.split(separator: "/")
    for s in tokenString {
        switch s {
            case "":
                break
            case ".":
            break
            case "..":
            let _ = stack.popLast()
            default:
            stack.append(String(s))
        }
    }

    return "/" + stack.joined(separator: "/")
}