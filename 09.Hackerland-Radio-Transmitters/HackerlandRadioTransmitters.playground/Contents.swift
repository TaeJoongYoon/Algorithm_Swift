import Foundation

// HackerRank : https://www.hackerrank.com/challenges/hackerland-radio-transmitters/problem

func hackerlandRadioTransmitters(x: [Int], k: Int) -> Int {
  var transmitters = 0
  let n = x.count
  let sorted = x.sorted()
  var i = 0
  
  while i < n {
    transmitters += 1
    
    var location = sorted[i] + k
    while i < n && sorted[i] <= location { i += 1 }
    location = sorted[i] + k
    while i < n && sorted[i] <= location { i += 1 }
  }
  
  return transmitters
}
