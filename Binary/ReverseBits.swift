
func reverseBits(_ n: Int)  -> Int {

        let stringBit = String(n)
        let reversedString = String(stringBit.reversed())
        let decimalValue = Int(reversedString, radix: 2)

        return decimalValue ?? 0
}


//Test cases:
print(reverseBits(11010))
print(reverseBits(1010))
print(reverseBits(00000011010))
