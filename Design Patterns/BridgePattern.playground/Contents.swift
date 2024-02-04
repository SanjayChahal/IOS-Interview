import UIKit

/* The Bridge pattern is a structural design pattern that decouples an abstraction from its implementation, allowing both to evolve independently.
 */

// Implementor: Device protocol
protocol Device {
    func turnOn()
    func turnOff()
    func setVolume(_ volume: Int)
}

// Concrete Implementors: TV and Radio
class TV: Device {
    func turnOn() { print("TV is turned on") }
    func turnOff() { print("TV is turned off") }
    func setVolume(_ volume: Int) { print("TV volume set to \(volume)") }
}

class Radio: Device {
    func turnOn() { print("Radio is turned on") }
    func turnOff() { print("Radio is turned off") }
    func setVolume(_ volume: Int) { print("Radio volume set to \(volume)") }
}

class Laptop: Device {
    func turnOn() { print("Laptop is turned on") }
    func turnOff() { print("Laptop is turned off") }
    func setVolume(_ volume: Int) { print("Laptop volume set to \(volume)") }
}

// Abstraction: RemoteControl
class RemoteControl {
    let device: Device

    init(device: Device) {
        self.device = device
    }

    func turnOn() { device.turnOn() }
    func turnOff() { device.turnOff() }
    func setVolume(_ volume: Int) { device.setVolume(volume) }
}

// Concrete Abstractions: TVRemoteControl and RadioRemoteControl
class TVRemoteControl: RemoteControl {
    func selectChannel(_ channel: Int) {
        print("TV channel \(channel) selected")
    }
}

class RadioRemoteControl: RemoteControl {
    func setFrequency(_ frequency: Double) {
        print("Radio frequency set to \(frequency)")
    }
}

class LaptopRemoteControl: RemoteControl {
    func setTheme(_ theme: String) {
        print("Laptop theme set to \(theme)")
    }
}

// Usage
let tvDevice = TV()
let tvRemote = TVRemoteControl(device: tvDevice)
tvRemote.turnOn()
tvRemote.setVolume(20)
tvRemote.selectChannel(5)
tvRemote.turnOff()

let radioDevice = Radio()
let radioRemote = RadioRemoteControl(device: radioDevice)
radioRemote.turnOn()
radioRemote.setVolume(10)
radioRemote.setFrequency(98.5)
radioRemote.turnOff()

let laptopDevice = Laptop()
let laptopRemote = LaptopRemoteControl(device: laptopDevice)
laptopRemote.turnOn()
laptopRemote.setVolume(10)
laptopRemote.turnOff()
laptopRemote.setTheme("Black")

/*
 The Bridge pattern allows you to change and extend both the devices and the remote controls independently without affecting each other. For instance, you can add new devices or remote control features without altering existing code. This separation enhances code maintainability and flexibility.
 */
