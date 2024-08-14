
func hIndex(_ citations: [Int]) -> Int {
        let sortedCitations = citations.sorted {$0 > $1}

        var i = 0 
        var hIndex = 0 

    while i < sortedCitations.count {

        if sortedCitations[i] > i {
                hIndex = i + 1
        }
            i += 1
        }

        return hIndex
}

//Sol-2:

 func hIndex(_ citations: [Int]) -> Int {
    
        let hIn = citations.sorted(by: >)
        var h = 0
        for (i, cit) in hIn.enumerated() {
            if i + 1 <= cit {
                h = i + 1
            } else {
                return h
            }
        }
        return h
}