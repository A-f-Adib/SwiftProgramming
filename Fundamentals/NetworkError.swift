
import Foundation

enum NetworkError: Error {
    case badURL
    case noConnection
}

func fetchData(from url: String) async throws -> String {
    if url.isEmpty {
        throw NetworkError.badURL
    }
    return "Data Fetched"
}

func handleFetch() async {
    do {
        let data = try await fetchData(from: "https://example.com")
        print(data)
    } catch {
        print("Error fetching data: \(error)")
    }
}

Task {
    await handleFetch()  // Call async method within a task
}
