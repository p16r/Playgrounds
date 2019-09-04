/*:

 ## Nested `defer`s

 You can nest a `defer` block inside another. The nested block will be\
 executed at the end of the outer block.

 */

func nestedDefers() {
    print("His palms are sweaty")
    defer {
        print("Arms are heavy")
        defer { print("Mom's spaghetti") }
        print("There's vomit on his sweater already")
    }
    print("Knees weak")
}

nestedDefers()

/*:

 [Previous: Multiple `defer`s](@previous) |
 [Index](@first) |
 [Next: Multiple *And* Nested `defer`s](@next)

 */
