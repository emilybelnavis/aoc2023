//
//  Day00.swift
//  AOC2023
//
//  Emily Belnavis - emily@emilybelnavis.ca
//

import Algorithms

struct Day01: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String 
  

  // Only works with part 1
  var entitiesp1: [[Int]] {
      data.components(separatedBy: "\n").map { line in
          line.compactMap { $0.wholeNumberValue }
      }
  }
  
  var entitiesp2: [[Int]] {
        return data.components(separatedBy: "\n").map { line in
            let first = firstNumber(in: line)
            let last = lastNumber(in: line)
            return [first, last]
        }
    }

  func part1() -> Any {
      let sum = entitiesp1.reduce(0) { total, line in
          guard let first = line.first, let last = line.last else { return total }
          return total + (first * 10 + last)
      }
      return sum
  }
  
  func part2() -> Any {
    let sum = entitiesp2.reduce(0) { total, line in
        let first = firstNumber(in: line.map(String.init).joined())
        let last = lastNumber(in: line.map(String.init).joined())
        return total + (first * 10 + last)
    }
    return sum
}


  private let search = [
    "one", "two", "three", "four", "five", "six", "seven", "eight", "nine",
    "1", "2", "3", "4", "5", "6", "7", "8", "9"
  ]

  private func valueFor(_ index: Int) -> Int {
    index < 9 ? index + 1 : index - 8
  }

  private func firstNumber(in line: String) -> Int {
        var line = line

        while !line.isEmpty {
            for (index, str) in search.enumerated() {
                if line.hasPrefix(str) {
                    return valueFor(index)
                }
            }
            line.removeFirst()
        }
        fatalError()
    }

    private func lastNumber(in line: String) -> Int {
        var line = line

        while !line.isEmpty {
            for (index, str) in search.enumerated() {
                if line.hasSuffix(str) {
                    return valueFor(index)
                }
            }
            line.removeLast()
        }
        fatalError()
    }
}

