# LightStyle

## Usage
```swift
// Import SDK
import LightStyleSDK

// Set username and password
LightStyleSDK.shared.initialize(username: "#username#", password: "#password#")

// Update configuration
LightStyleSDK.shared.updateConfiguration(projectId: "#project_id#", unitId: "#unit_id#") { (success, error) in

    // Get the first room
    if success, let room = LightStyleSDK.shared.rooms.first {
        // Get the first switch and the first command
        if let sw = room.switches.first, let cmd = sw.commands.first {
            LightStyleSDK.shared.sendCommand(to: sw, with: cmd, completion: { (success, error) in
                if success {
                    print("Send command successfully.")
                }
            })
        }
        // Get the first curtain and the first command
        if let ct = room.curtains.first, let cmd = ct.commands.first {
            LightStyleSDK.shared.sendCommand(to: ct, with: cmd, completion: { (success, error) in
                if success {
                    print("Send command successfully.")
                }
            })
        }
        // Get the first air conditioner
        if let ac = room.airConditioners.first {
            let cmd = LSAirConditionerOptionCommands(power: LSAirConditionerPowerOption.open,
                                                        mode: LSAirConditionerModeOption.auto,
                                                        operation: LSAirConditionerOperationOption.auto,
                                                        fan: LSAirConditionerFanOption.medium,
                                                        setTemperature: 24)
            LightStyleSDK.shared.sendCommand(to: ac, with: cmd, completion: { (success, error) in
                print("Send command successfully.")
            })
        }
        
        // Get the first remote control and the first command
        if let ir = room.remoteControls.first, let cmd = ir.commands.first {
            LightStyleSDK.shared.sendCommand(to: ir, with: cmd, completion: { (success, error) in
                print("Send command successfully.")
            })
        }
    }
}
```
