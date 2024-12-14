
func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {

    var result: [[Int]] = []
    var newInterval = newInterval

    for interval in intervals {
        if interval[1] < newInterval[0] {
            result.append(interval)
        }
        else if newInterval[1] < interval[0] {
            result.append(newInterval)
            newInterval = interval
        } else {
            newInterval[0] = min(interval[0], newInterval[0])
            newInterval[1] = max(interval[1], newInterval[1])
        }
    }
    result.append(newInterval)
    return result
}


print(insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,8]))