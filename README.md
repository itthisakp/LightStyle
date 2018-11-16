# LightStyle

## Usage
```swift
// Import SDK
import LightStyleSDK

// Get rooms
let rooms = LightStyleSDK.shared.rooms

// Set Switch Command
let sw = LightStyleSDK.shared.rooms.first!.switches.first!
let cmd = sw.commands.first!
        
LightStyleSDK.shared.sendCommand(to: sw, with: cmd) { (success, error) in
    if success {
        print("Send Command Successfully")
    } else {
        print("error: \(error?.description ?? "unknown error").")
    }
}
```
