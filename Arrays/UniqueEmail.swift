
func getUniqueEmail(_ list: [String]) -> Int {
    if list.isEmpty {
        return -1
    }

    var uniqueEmails = Set<String>()
    print(list)

    for item in list {
        let emailPart = item.split(separator: "@").map {String($0)}
        var localName = emailPart[0]
        var domainName = emailPart[1]

        
    }
}