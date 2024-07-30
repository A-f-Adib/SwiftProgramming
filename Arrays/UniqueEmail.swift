import Foundation

func getUniqueEmail(_ list: [String]) -> Int {
    if list.isEmpty {
        return -1
    }

    var uniqueEmails = Set<String>()
    print(list)

    for item in list {
        let emailPart = item.split(separator: "@").map {String($0)}
        var localName = emailPart[0]
        let domainName = emailPart[1]

        localName = localName.replacingOccurrences(of: ".", with: "")
        if let idx = localName.range(of: "+") {
            localName = String(localName[..<idx.lowerBound])
        }
        uniqueEmails.insert("\(localName)@\(domainName)")
    }
    print(uniqueEmails)
    return uniqueEmails.count
}