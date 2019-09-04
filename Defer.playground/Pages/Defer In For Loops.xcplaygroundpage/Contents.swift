/*:

 ## `defer` in `for` loops

 You can nest `defer` blocks inside `for` or `while` loops. They will be\
 run at the end of each iteration of the loop.

 */

func deferInForLoops() {
    for _ in 1 ... 19 {
        defer { print("Hey Jude") }
        print("Naa")
        print("Naa naa")
        for _ in 0 ..< 2 { print("Na na na naaa") }
    }
}

deferInForLoops()

/*:

 [Previous: `defer` In Conditionals](@previous) |
 [Index](@first) |
 [Next: `defer` In `switch`es](@next)

 */

