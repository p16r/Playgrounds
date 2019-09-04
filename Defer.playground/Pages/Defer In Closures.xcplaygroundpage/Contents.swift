/*:

 ## `defer` in Closures

 Closures can also have `defer` blocks. They get executed at the end of\
 the closure execution just like ordinary functions. In case of\
 repeatedly executed closures like in `map`, `forEach` etc, the `defer`\
 blocks will get executed each time the function is called.

 */

func deferInClosures() {
    let lyrics = [
        "Wake up",
        "Grab a brush and put a little make-up",
        "Hide the scars to fade away the shake-up",
        "Why d'you leave the keys upon the table",
    ]
    defer {
        defer {
            lyrics.dropFirst().forEach { lyric in
                defer { print("You wanted to") }
                print(lyric)
            }
        }
        print("You wanted to")
    }
    do {
        let lyric = lyrics.first!
        defer { print("(\(lyric))") }
        print(lyric)
    }
    lyrics.dropFirst().enumerated().forEach { (index, lyric) in
        defer {
            if index == 1 {
                let lyric = lyric
                    .split(separator: " ")
                    .dropLast()
                    .joined(separator: " ")
                print("(\(lyric))")
            }
        }
        print(lyric)
    }
    print("Here we go creating another fable")
}

deferInClosures()

/*:

 [Previous: `defer` In `switch`es](@previous) |
 [Index](@first) |
 [Next: Learn More](@next)

 */
