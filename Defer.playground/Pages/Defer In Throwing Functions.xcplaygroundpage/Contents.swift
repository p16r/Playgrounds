/*:

 ## `defer` in `throw`ing functions

 If a function `throw`s an error, all the `defer` blocks encountered\
 *before* the `throw` are executed in the same fashion as before. Any\
 `defer` blocks *after* the `throw` are *not* executed.

 */

struct DeferPlaygroundError: Error {}

func deferInThrowingFunction() throws {
    let functionThrows = Bool.random()
    let pronoun0 = functionThrows ? "She" : "He"
    let pronoun1 = functionThrows ? "He" : "She"

    print("Just a small town girl")
    defer { print("\(pronoun0) took the midnight train goin' anywhere") }
    print("Livin' in a lonely world")

    if functionThrows { throw DeferPlaygroundError() }

    print("\(pronoun1) took the midnight train goin' anywhere")
    defer { print("Born and raised in south Detroit") }
    print("Just a city boy")
}

try? deferInThrowingFunction()

/*:

 [Previous: Non-Captured `defer` Values](@previous) |
 [Index](@first) |
 [Next: `defer` In `do` Blocks](@next)

 */
