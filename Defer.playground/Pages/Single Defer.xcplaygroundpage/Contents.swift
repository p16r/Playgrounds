/*:

 ## Single `defer`

 Code in the `defer` block will not be executed immediately.\
 It will be *deferred* till the end of the function.

 */

func singleDefer() {
    print("There's a lady who's sure")
    defer { print("And she's buying a stairway to heaven") }
    print("All that glitters is gold")
}

singleDefer()

/*:

 [Index](@first) |
 [Next: Multiple `defer`s](@next)

 */
