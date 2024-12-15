
 func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        
   guard !intervals.isEmpty else { return 0 }

   let sortedIntervals = intervals.sorted{ $0[1] < $1[1] }

   var nonOverlaps : Int = 0
   var prevEnd = Int.min

   for interval in sortedIntervals {
        if interval[0] >= prevEnd {
            prevEnd = interval[1]
            nonOverlaps += 1
        }
   }
    return sortedIntervals.count - nonOverlaps
 }

 print(eraseOverlapIntervals([[1,2],[2,3],[3,4],[1,3]]))
 print(eraseOverlapIntervals([[1,2],[1,2],[1,2]]))