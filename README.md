# LightStyle

## Usage
```swift
// Import SDK
import LightStyleSDK

// Set Username and password.
LightStyleSDK.initialize(username: "<username>", password: "<password>")
        
// Set project id and unit id.
LightStyleSDK.shared.set(projectId: "<project id>", unit: "<unit>")
        
// Update configuration.
LightStyleSDK.shared.updateConfiguration { (success, error) in
    if success {
        print("update configuration successfully.")
    }
    // Get all rooms
    let rooms = LightStyleSDK.shared.rooms
}
```
