import Foundation

// HackerRank : https://www.hackerrank.com/challenges/counter-game/problem

func numberOf2(_ n: Int) -> Int {
  var test = 2
  
  while test < n {
    test *= 2
  }
  
  if test == n {
    return n / 2
  } else {
    test /= 2
    return n - test
  }
}

func counterGame(n: Int) -> String {
  guard n > 1 else { return "Richard" }
  
  var isLouiseTurn = true
  var remainNumber = n
  
  
  while remainNumber > 1 {
    remainNumber = numberOf2(remainNumber)
    isLouiseTurn.toggle()
  }
  
  return !isLouiseTurn ? "Louise" : "Richard"
}
