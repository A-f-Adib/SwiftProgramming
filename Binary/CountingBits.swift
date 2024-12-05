
func CountingBits(_ n: Int) -> [Int] {
        
    var returnArray : [Int] = []     
    for i in 0...n {

   
    let decimalNumber = i
    let binaryString = String(decimalNumber, radix: 2)
    var count = 0

   for j in binaryString {
        if j == "1" {
            count += 1
        }
        
   }
     returnArray.append(count)
 }
    return returnArray
}


//Test cases:
print(CountingBits(2))
print(CountingBits(5))
print(CountingBits(7))