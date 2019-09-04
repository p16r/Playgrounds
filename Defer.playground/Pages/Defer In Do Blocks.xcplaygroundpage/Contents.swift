/*:

 ## `defer` In `do` Blocks

 `defer` can be eagerly executed if it is nested inside a `do` block.\
 A `do` block explicitly creates a new, nested scope within the current\
 execution scope. When this nested scope is exited, all `defer` blocks\
 within this scope are executed before moving forward with the execution\
 of the current scope.

 */

func deferInDoBlocks() {
    print("Living easy, living free")
    do {
        defer { print("Asking nothing, leave me be") }
        print("Season ticket on a one-way ride")
    }
    defer {
        print("Don't need reason, don't need rhyme")
        do {
            defer { print("Going down, party time") }
            print("Ain't nothing I would rather do")
        }
        print("My friends are gonna be there too")
    }
    print("Taking everything in my stride")
}

deferInDoBlocks()

/*:

 [Previous: `defer` In `throw`ing Functions](@previous) |
 [Index](@first) |
 [Next: `defer` In Conditionals](@next)

 */
