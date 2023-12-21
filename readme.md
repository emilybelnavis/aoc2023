# Advent of Code 2023

[![Language](https://img.shields.io/badge/language-Swift-red.svg?style=flat)](https://swift.org)

Daily programming puzzles at [Advent of Code](<https://adventofcode.com/>), by
[Eric Wastl](<http://was.tl/>).


## How this repo works

The challenges assume three files (replace 00 with the day of the challenge).

- `Sources/Data/Day00.txt`: the input data provided for the challenge
- `Sources/Day00.swift`: the code to solve the challenge
- `Tests/Day00.swift`: any unit tests that you want to include

To start a new day's challenge, make a copy of these files, updating 00 to the 
day number.

```diff
// Add each new day implementation to this array:
let allChallenges: [any AdventDay] = [
-  Day00()
+  Day00(),
+  Day01(),
]
```

Then implement part 1 and 2. The `AdventOfCode.swift` file controls which challenge
is run with `swift run`. Add your new type to its `allChallenges` array. By default 
it runs the most recent challenge.

The `AdventOfCode.swift` file controls which day's challenge is run
with `swift run`. By default that runs the most recent challenge in the package.

To supply command line arguments use `swift run AdventOfCode`. For example,
`swift run -c release AdventOfCode --benchmark 3` builds the binary with full
optimizations, and benchmarks the challenge for day 3.

# Stats
| Day  | Part 1 | Part 1 RT | Part 2 | Part 2 RT |
| :--: | :--:   | :--:      | :--:   | :--:      |
| [Day 1](https://adventofcode.com/2023/day/1) | ⭐️ | 0.002645331 s | ⭐️ | 0.005803179 seconds
