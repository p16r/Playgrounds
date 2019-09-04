/*:

 ## Multiple `defer`s

 If you have more than one `defer` blocks in your function, they will\
 be executed in the reverse order of their declaration. i.e. the second\
 `defer` block will be executed before the first etc

 */

func multipleDefers() {
    print("Is this the real life")
    defer { print("No escape from reality") }
    defer { print("Caught in a landslide") }
    print("Is this just fantasy")
}

multipleDefers()

/*:

 [Previous: Single `defer`](@previous) |
 [Index](@first) |
 [Next: Nested `defer`s](@next)

 */
