import Foundation

// HackerRank : https://www.hackerrank.com/challenges/maximizing-xor/problem

func maximizingXor(l: Int, r: Int) -> Int {
  var maxXOR = 0
  
  for i in l...r {
    for j in l...r {
      maxXOR = max(maxXOR, i^j)
    }
  }
  
  return maxXOR
}
