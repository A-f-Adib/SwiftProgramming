
import Foundation

func getDocumentsDirectory() -> URL {
    FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
}

func saveToFile(text: String) {
    let filename = getDocumentsDirectory().appendingPathComponent("myfile.txt")
    try? text.write(to: filename, atomically: true, encoding: .utf8)
}

func readFromFile() -> String? {
    let filename = getDocumentsDirectory().appendingPathComponent("myfile.txt")
    return try? String(contentsOf: filename)
}

// Usage
saveToFile(text: "Hello, iOS!")
print(readFromFile() ?? "No data") // Output: "Hello, iOS!"
