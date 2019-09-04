/*:

 ## Non-Captured `defer` Values

 Values accessed in a `defer` block are not captured and saved when the\
 block is encountered. If the value of a variable is changed in between\
 two `defer` blocks, both blocks will receive the new value when run.

 */

func nonCapturedDeferValues() {
    var lyrics = "Sing with me, sing for the year"
    defer { print(lyrics) }

    lyrics = "Sing for the laughter, sing for the tear"
    defer { print(lyrics) }

    lyrics = "Sing with me, just for today"
    defer { print(lyrics) }

    lyrics = "Maybe tomorrow, the good Lord will take you away"
    defer { print(lyrics) }

    lyrics = "Dream on"
    print(lyrics)
}

nonCapturedDeferValues()

/*:

 [Previous: Multiple *And* Nested `defer`s](@previous) |
 [Index](@first) |
 [Next: `defer` In `throw`ing Functions](@next)

 */
