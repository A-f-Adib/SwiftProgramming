
import Foundation

func fetchData() async {
    await withTaskGroup(of: String.self) { group in
        group.addTask {
            return await fetchWeatherData()
        }
        
        group.addTask {
            return await fetchStockData()
        }
        
        for await result in group {
            print("Received: \(result)")  // ✅ Results appear as tasks complete
        }
    }
}

func fetchWeatherData() async -> String {
    try? await Task.sleep(nanoseconds: 2_000_000_000) // Simulating delay
    return "🌤 Weather: 25°C"
}

func fetchStockData() async -> String {
    try? await Task.sleep(nanoseconds: 1_000_000_000) // Simulating delay
    return "📈 Stock Price: $150"
}

Task {
    await fetchData()
}

//-----------------------------------------------------

func fetchAllData() async -> [String] {
    await withTaskGroup(of: String?.self) { group in
        var results: [String] = []
        
        let urls = ["weatherAPI", "stockAPI", "newsAPI"]
        
        for url in urls {
            group.addTask {
                return await fetchData(from: url)
            }
        }
        
        for await data in group {
            if let data = data {
                results.append(data)
            }
        }
        
        return results
    }
}

func fetchData(from source: String) async -> String? {
    try? await Task.sleep(nanoseconds: UInt64.random(in: 1_000_000_000...3_000_000_000))
    return "✅ Data from \(source)"
}

Task {
    let results = await fetchAllData()
    print(results) // ✅ ["✅ Data from weatherAPI", "✅ Data from stockAPI", "✅ Data from newsAPI"]
}


//-----------------------------------------------------

//task group with error handling

enum DataError: Error {
    case fetchFailed
}

func fetchAllSafeData() async {
    do {
        let results = try await withThrowingTaskGroup(of: String.self) { group -> [String] in
            var results: [String] = []
            
            let sources = ["weather", "stock", "news", "crypto"]
            
            for source in sources {
                group.addTask {
                    return try await fetchSafeData(from: source)
                }
            }
            
            for try await result in group {
                results.append(result)
            }
            
            return results
        }
        
        print("✅ Success: \(results)")
    } catch {
        print("❌ Error: \(error)")
    }
}

func fetchSafeData(from source: String) async throws -> String {
    if Bool.random() { throw DataError.fetchFailed } // Simulating failure randomly
    try? await Task.sleep(nanoseconds: UInt64.random(in: 1_000_000_000...2_000_000_000))
    return "📊 Data from \(source)"
}

Task {
    await fetchAllSafeData()
}

//-----------------------------------------------------

//5️⃣ Limiting Concurrency with Task Groups

import Foundation

func processImages() async {
    let imageIDs = (1...1000).map { "image_\($0)" }
    
    await withTaskGroup(of: Void.self) { group in
        let maxConcurrentTasks = 5
        var activeTasks = 0
        
        for id in imageIDs {
            while activeTasks >= maxConcurrentTasks {
                await Task.yield() // Pause to avoid blocking
            }
            
            group.addTask {
                activeTasks += 1
                await processImage(id: id)
                activeTasks -= 1
            }
        }
    }
}

func processImage(id: String) async {
    try? await Task.sleep(nanoseconds: 500_000_000) // Simulating processing time
    print("🖼 Processed \(id)")
}

Task {
    await processImages()
}


//-----------------------------------------------------------

//nested task group

func fetchProductData() async {
    await withTaskGroup(of: String.self) { group in
        let categories = ["Electronics", "Fashion", "Books"]
        
        for category in categories {
            group.addTask {
                await withTaskGroup(of: String.self) { innerGroup in
                    let products = ["Product A", "Product B", "Product C"]
                    
                    for product in products {
                        innerGroup.addTask {
                            return "🔹 \(category) -> \(product)"
                        }
                    }
                    
                    for await productDetail in innerGroup {
                        print(productDetail)
                    }
                }
                
                return "✅ Completed category: \(category)"
            }
        }
        
        for await result in group {
            print(result)
        }
    }
}

Task {
    await fetchProductData()
}


//-----------------------------------------------------------
//Manually cancelling tasks

import Foundation

func fetchDataWithCancellation() async {
    await withTaskGroup(of: String?.self) { group in
        let sources = ["API 1", "API 2", "API 3", "API 4"]
        
        for source in sources {
            group.addTask {
                if Task.isCancelled { return nil } // Check for cancellation
                return await fetchData(from: source)
            }
        }
        
        // Simulating early cancellation
        try? await Task.sleep(for: .seconds(1)) // Simulating a delay before cancellation
        group.cancelAll() // Cancels all tasks in the group
        
        for await result in group {
            if let result = result {
                print("✅ Received: \(result)")
            } else {
                print("❌ Task was cancelled")
            }
        }
    }
}

func fetchData(from source: String) async -> String {
    try? await Task.sleep(nanoseconds: 2_000_000_000) // Simulating delay
    return "Data from \(source)"
}

Task {
    await fetchDataWithCancellation()
}


//-----------------------------------------------------------

//Priotizing task group

func fetchDataWithPriority() async {
    await withTaskGroup(of: String.self) { group in
        group.addTask(priority: .high) {
            return await fetchCriticalData()
        }
        
        group.addTask(priority: .background) {
            return await fetchLowPriorityData()
        }
        
        for await result in group {
            print("✅ \(result)")
        }
    }
}

func fetchCriticalData() async -> String {
    try? await Task.sleep(nanoseconds: 1_000_000_000)
    return "🚀 Critical Data"
}

func fetchLowPriorityData() async -> String {
    try? await Task.sleep(nanoseconds: 2_000_000_000)
    return "📄 Background Data"
}

Task {
    await fetchDataWithPriority()
}


//-----------------------------------------------------------

//parallel task group

func fetchAllData2() async {
    async let users = fetchUsers()
    async let posts = fetchPosts()

    let (userResults, postResults) = await (users, posts)
    
    print("Users: \(userResults)")
    print("Posts: \(postResults)")
}


func fetchUsers() async -> [String] {
    await withTaskGroup(of: String.self) { group in
        var users: [String] = []
        let ids = [1, 2, 3, 4]

        for id in ids {
            group.addTask {
                return await fetchUser(id: id)
            }
        }

        for await user in group {
            users.append(user)
        }

        return users
    }
}

func fetchPosts() async -> [String] {
    await withTaskGroup(of: String.self) { group in
        var posts: [String] = []
        let postIds = [100, 101, 102]

        for id in postIds {
            group.addTask {
                return await fetchPost(id: id)
            }
        }

        for await post in group {
            posts.append(post)
        }

        return posts
    }
}

func fetchUser(id: Int) async -> String {
    try? await Task.sleep(nanoseconds: UInt64.random(in: 500_000_000...1_500_000_000))
    return "👤 User \(id)"
}

func fetchPost(id: Int) async -> String {
    try? await Task.sleep(nanoseconds: UInt64.random(in: 500_000_000...1_500_000_000))
    return "📝 Post \(id)"
}

Task {
    await fetchAllData2()
}

//----------------------------------------------------------------

//task group with dependencies

func fetchOrderData() async {
    await withTaskGroup(of: String.self) { group in
        let orders = ["Order 1", "Order 2", "Order 3"]

        for order in orders {
            group.addTask {
                await withTaskGroup(of: String.self) { innerGroup in
                    let items = ["Item A", "Item B", "Item C"]
                    
                    for item in items {
                        innerGroup.addTask {
                            return "\(order) -> \(item)"
                        }
                    }
                    for await itemDetail in innerGroup {
                        print("📦 \(itemDetail)")
                    }
                }
                return "✅ Completed \(order)"
            }
        }
        for await result in group {
            print(result)
        }
    }
}
Task {
    await fetchOrderData()
}

//----------------------------------------------------------------

import Foundation

func fetchNewWeatherData() async {
    async let temp = fetchTemperature()
    async let humidity = fetchHumidity()
    async let wind = fetchWindSpeed()

    let (t, h, w) = await (temp, humidity, wind)
    print("🌡️ Temp: \(t), 💧 Humidity: \(h), 🌬️ Wind: \(w)")
}

func fetchTemperature() async -> String {
    try? await Task.sleep(nanoseconds: 500_000_000)
    return "22°C"
}

func fetchHumidity() async -> String {
    try? await Task.sleep(nanoseconds: 500_000_000)
    return "60%"
}

func fetchWindSpeed() async -> String {
    try? await Task.sleep(nanoseconds: 500_000_000)
    return "15 km/h"
}

Task {
    await fetchNewWeatherData()
}

