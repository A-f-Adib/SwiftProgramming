/*
The Builder Pattern is a creational design pattern that simplifies the creation of complex 
objects step by step instead of requiring a large initializer with multiple parameters.
*/

//Step 1: Define the Product

import Foundation

class Burger {

    let cheese: Bool
    let lettuce: Bool
    let tomato: Bool
    let bacon: Bool

     init(cheese: Bool, lettuce: Bool, tomato: Bool, bacon: Bool) {
        self.cheese = cheese
        self.lettuce = lettuce
        self.tomato = tomato
        self.bacon = bacon
    }

    func description() {
        print("Burger with\(cheese ? " Cheese" : "")\(lettuce ? " Lettuce" : "")\(tomato ? " Tomato" : "")\(bacon ? " Bacon" : "")")
    }
}

//Step 2: create the Builder
class BurgerBuilder {
    private var cheese = false
    private var lettuce = false
    private var tomato = false
    private var bacon = false

    func addCheese() -> BurgerBuilder {
        self.cheese = true
        return self
    }

    func addLettuce() -> BurgerBuilder {
        self.lettuce = true
        return self
    }

    func addTomato() -> BurgerBuilder {
        self.tomato = true
        return self
    }

    func addBacon() -> BurgerBuilder {
        self.bacon = true
        return self
    }

     func build() -> Burger {
        return Burger(cheese: cheese, lettuce: lettuce, tomato: tomato, bacon: bacon)
    }
}

//Step 3: Use the Builder

let burger = BurgerBuilder()
    .addCheese()
    .addLettuce()
    .addBacon()
    .build()

burger.description() // Output: Burger with Cheese Lettuce Bacon

//------------------------------------------------------------

//URL Requests with Builder Pattern

import Foundation

class URLRequestBuilder {
    private var url: String = ""
    private var method: String = "GET"
    private var headers: [String: String] = [:]

    func setURL(_ url: String) -> URLRequestBuilder {
        self.url = url
        return self
    }

    func setMethod(_ method: String) -> URLRequestBuilder {
        self.method = method
        return self
    }

    func addHeader(key: String, value: String) -> URLRequestBuilder {
        self.headers[key] = value
        return self
    }

    func build() -> URLRequest? {
        guard let url = URL(string: self.url) else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = method
        request.allHTTPHeaderFields = headers
        return request
    }
}

// Usage:
if let request = URLRequestBuilder()
    .setURL("https://api.example.com")
    .setMethod("POST")
    .addHeader(key: "Authorization", value: "Bearer token")
    .build() {
    print(request)
}