/*:

 ## `defer` In Conditionals

 Similar to how expressions in an `else` block do not get executed if\
 execution enters the `if` block, the `defer` blocks in an `else` do not\
 get executed if control enters the `if` block and vice versa.

 */

func deferInConditionals() {
    print("Karma police")
    if Bool.random() {
        defer {
            print("He buzzes like a fridge")
            print("He's like a detuned radio")
        }
        print("Arrest this man")
        print("He talks in maths")
    } else {
        print("Arrest this girl")
        defer { print("And we have crashed her party") }
        defer { print("Is making me feel ill") }
        print("Her Hitler hairdo")
    }
}

deferInConditionals()

/*:

 [Previous: `defer` In `do` Blocks](@previous) |
 [Index](@first) |
 [Next: `defer` In `for` Loops](@next)

 */
