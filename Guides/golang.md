# Go Lang

<!-- TOC depthFrom:2 -->

- [Preformace](#preformace)
- [Good Articles](#good-articles)

<!-- /TOC -->

## Preformace

- [High Preformance Go](https://go-talks.appspot.com/github.com/davecheney/high-performance-go-workshop/high-performance-go-workshop.slide)
    - [Code](https://github.com/davecheney/high-performance-go-workshop)
    - Great slide deck of details regarding golang preformance, profiling, pprof, etc.
    - Highlights:
        - Looking at compiler optimizations: `go build -gcflags="-m" <file>`
        - See Go assembly: `go build -gcflags="-m -S" <file> 2>&1 | less`
        - Can see inlining and dead code deletion with:
            ```go
            func Max(a, b int) int {
                if a > b {
                    return a
                }
                return b
            }

            func F() {
                const a, b = 100, 20
                if Max(a, b) == b { // Max will be inlined & this will get fully optimized out
                    panic(b)
                }
            }
            ```

## Good Articles

- [Writing Go - Basic Reasons](https://www.commandercoriander.net/blog/2017/12/31/writing-go/)
- [Go Maps](https://dave.cheney.net/2018/05/29/how-the-go-runtime-implements-maps-efficiently-without-generics)
    - [Hacker News Comments](https://news.ycombinator.com/item?id=17915371)
