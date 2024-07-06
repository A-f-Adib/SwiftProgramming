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

//sol-2:

func SimplifyPath(_ path: String) -> String {
    "/" + path.split(separator: "/").reduce(into: [Substring]()) {
        switch $1 {
        case ".": return
        case "..": _ = $0.popLast()
        default: $0.append($1)
        }
    }.joined(separator: "/")
}


// test cases: 

let input = ["/home/", "/home//foo/", "/home/user/Documents/../Pictures", "/../", "/.../a/../b/c/../d/./"]

for i in input {
    print(simplifyPath(i))
}