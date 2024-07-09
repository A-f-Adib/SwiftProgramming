 //Step-1: Reverse the whole array
 //Stap-2: Reverse first K-th element
 //Step-3: Reverse last length-k element

 func rotate(_ nums:  [Int], _ k: Int) -> [Int] {

  var nums = nums    
  let n = nums.count
  var arr = [Int]()

      reverse(&nums, 0, n-1)
      reverse(&nums, 0, k-1)
      reverse(&nums, k, n-1)

      for i in nums {
         arr.append(i)
      }

      return arr
}

func reverse(_ nums: inout [Int], _ start : Int, _ end: Int) {
    var start = start
    var end  = end

    while  start < end {
        let temp = nums[start]
        nums[start] = nums[end]
        nums[end] = temp

        start += 1
        end -= 1
    }
}

print(rotate([1,2,3,4], 1))
print(rotate([1,2,3,4], 2))
print(rotate([1,2,3,4], 3))