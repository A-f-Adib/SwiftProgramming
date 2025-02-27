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
