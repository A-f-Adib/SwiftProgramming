 
 func merge(_ intervals: [[Int]]) -> [[Int]] {

  guard !intervals.isEmpty else { return [] }

    let sortedIntervals = intervals.sorted{ $0[0] < $1[0]}

    var result : [[Int]] = []

    for interval in sortedIntervals {
        if result.isEmpty || result.last![1] < interval[0] {
            result.append(interval)
        } else {
            result[result.count - 1][1] = max(result.last![1], interval[1])
        }
    }
    return result
 }


 print(merge([[1,3],[2,6],[8,10],[15,18]]))