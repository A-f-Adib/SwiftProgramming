 
 func maxArea(_ height: [Int]) -> Int {

    var left = 0
    var right = height.count - 1
    var maxArea = 0

    while left < right {

       let area = min(height[left], height[right]) * (right - left)

       maxArea = max(area, maxArea)

       if height[left] < height[right] {
        left += 1
       } else {
        right -= 1
       }
    }     
    return maxArea  
 }



print(maxArea([1,8,6,2,5,4,8,3,7]))