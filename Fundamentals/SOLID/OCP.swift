//Open-Closed Principle (OCP)

/* 
Objects or entities should be open for extension but closed for modification. 
This means that a class should be easily extendable without modifying the class itself. 
This principle helps in writing robust and maintainable code.
*/

import Foundation

// Violation of OCP

class DiscountService {
    func applyDiscount(amount: Double, discountType: String) -> Double {
        if discountType == "Percentage" {
            return amount * 0.9
        } else if discountType == "Flat" {
            return amount - 10.0
        } else {
            return amount
        }
    }
}

//Using OCP with Protocols & Extensions

protocol Discount {
    func apply(to amount: Double) -> Double
}

class PercentageDiscount: Discount {
    func apply(to amount: Double) -> Double {
        return amount * 0.9
    }
}

class FlatDiscount: Discount {
    func apply(to amount: Double) -> Double {
        return amount - 10.0
    }
}

class DiscountService2 {
    func applyDiscount(amount: Double, discount: Discount) -> Double {
        return discount.apply(to: amount)
    }
}

let service = DiscountService2()
let percentageDiscount = PercentageDiscount()
let flatDiscount = FlatDiscount()

print(service.applyDiscount(amount: 100, discount: percentageDiscount)) // 90.0
print(service.applyDiscount(amount: 100, discount: flatDiscount)) // 90.0

/*
New discount types can be added without modifying existing classes.
The Discount protocol allows extensibility while keeping the DiscountService unchanged.
*/