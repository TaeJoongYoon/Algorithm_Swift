import Foundation

// HackerRank : https://www.hackerrank.com/challenges/icecream-parlor/problem

func icecreamParlor(m: Int, arr: [Int]) -> [Int] {
  var dict = [Int: Int]()
  for (i, elem) in arr.enumerated() {
    dict[i] = elem
  }
  let sorted = dict.sorted { $0.value < $1.value }
  var (minIndex, maxIndex) = (0, arr.count - 1)
  var sum = sorted[minIndex].value + sorted[maxIndex].value
  
  while sum != m {
    if sum > m { maxIndex -= 1 }
    else { minIndex += 1}
    sum = sorted[minIndex].value + sorted[maxIndex].value
  }
  
  return [sorted[minIndex].key + 1, sorted[maxIndex].key + 1].sorted()
}
