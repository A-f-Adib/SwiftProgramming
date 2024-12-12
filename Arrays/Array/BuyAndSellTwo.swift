
  func maxProfit(_ prices: [Int]) -> Int {
        var totalProfit = 0

        for i in 1..<prices.count {
            if prices[i - 1] < prices[i] {
                totalProfit += prices[i] - prices[i - 1]
            }
        }

        return totalProfit
    }

//Test Cases: 
//Case-1:
print("Max profit: \(maxProfit([3,1,4,2,6,5]))")
//Case-2:
print("Max profit: \(maxProfit([7,6,4,3,1]))")
//Case-3:
print("Max profit: \(maxProfit([5,3,2,6,1,4,7]))")

