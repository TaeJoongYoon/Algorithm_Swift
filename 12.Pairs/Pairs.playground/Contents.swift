import Foundation

// HackerRank : https://www.hackerrank.com/challenges/pairs/problem

func pairs(k: Int, arr: [Int]) -> Int {
  var count = 0
  var dict = [Int: Int]()
  for elem in arr {
    dict[elem] = 1
  }
  
  for key in dict.keys.sorted(){
    if dict[key+k] != nil { count += 1 }
  }
  
  return count
}
