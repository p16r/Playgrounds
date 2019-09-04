/*:

 ## Multiple And Nested `defer`s


 Nesting defer blocks and using multiple defer blocks in the same flow\
 of execution causes a sort of stack-within-stack control flow. I cannot\
 imagine what sort of situation would need this sort of solution.\

 */

func multipleAndNestedDefers() {
    defer {
        defer { print("and hurt you") }
        print("Never gonna tell a lie")
    }
    print("Never gonna give you up")
    defer { print("Never gonna say goodbye") }
    defer {
        defer { print("Never gonna make you cry") }
        defer { print("desert you") }
        print("Never gonna run around and")
    }
    print("Never gonna let you down")
}

multipleAndNestedDefers()

/*:

 [Previous: Nested `defer`s](@previous) |
 [Index](@first) |
 [Next: Non-Captured `defer` Values](@next)

 */
