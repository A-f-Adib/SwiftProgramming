
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
