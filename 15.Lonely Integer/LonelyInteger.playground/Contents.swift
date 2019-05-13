import Foundation

// HackerRank : https://www.hackerrank.com/challenges/lonely-integer/problem

func lonelyinteger(a: [Int]) -> Int {
  var unique: Int = a[0]
  var dict = [Int: Int]()
  for elem in a {
    dict.updateValue((dict[elem] ?? 0) + 1, forKey: elem)
  }
  
  if dict.count == 1 { return unique }
  
  for (key, value) in dict {
    if value == 1 {
      unique = key
      break
    }
  }
  
  return unique
}
