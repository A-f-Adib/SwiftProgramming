/*
The Adapter Pattern is a structural design pattern that allows two incompatible interfaces to work 
together. It acts as a bridge between two different classes by translating one interface into another.
*/

import Foundation

//Step 1: Define the existing class
class MP3Player {
    func playMP3(file: String) {
        print("Playing MP3 file: \(file)")
    }
}

//Step 2: Define the New Interface
protocol MusicStreamingService {
    func playSong(url: String)
}

//Step 3: Create the Adapter
class MP3Adapter: MusicStreamingService {
    private var mp3Player: MP3Player

    init(mp3Player: MP3Player) {
        self.mp3Player = mp3Player
    }

    func playSong(url: String) {
        print("Converting streaming URL to MP3 format...")
        let mp3File = url + ".mp3" // Simulating conversion
        mp3Player.playMP3(file: mp3File)
    }
}

//Step 4: Use the Adapter
let oldMP3Player = MP3Player()
let adapter = MP3Adapter(mp3Player: oldMP3Player)

adapter.playSong(url: "https://spotify.com/song123")
// Output:
// Converting streaming URL to MP3 format...
// Playing MP3 file: https://spotify.com/song123.mp3


