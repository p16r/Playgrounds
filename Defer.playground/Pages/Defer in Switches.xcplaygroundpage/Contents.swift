/*:

 ## `defer` in `switch`es

`defer` blocks can also be included in `switch` statements. However,
only those `defer` blocks in the matching case will be executed.

 */

func deferInSwitch() {
    defer { print ("And nothing else matters") }
    switch Int.random(in: 0 ..< 3) {
    case 0:
        print("So close, no matter how far")
        defer { print("Forever trusting who we are") }
        print("Couldn't be much more from the heart")
    case 1:
        defer { print("All these words I don't just say") }
        print("Never opened myself this way")
        print("Life is ours, we live it our way")
    case 2:
        defer {
            print("Every day for us something new")
            print("Open mind for a different view")
        }
        print("Trust I seek and I find in you")
    default: break
    }
}

/*:

 [Previous: `defer` In `for` Loops](@previous) |
 [Index](@first) |
 [Next: `defer` In Closures](@next)

 */
