import Foundation

// HackerRank : https://www.hackerrank.com/challenges/missing-numbers/problem

func missingNumbers(arr: [Int], brr: [Int]) -> [Int] {
  var missing: [Int] = []
  var arrDict = [Int: Int]()
  var brrDict = [Int: Int]()
  
  for elem in arr {
    arrDict.updateValue((arrDict[elem] ?? 0) + 1, forKey: elem)
  }
  
  for elem in brr {
    brrDict.updateValue((brrDict[elem] ?? 0) + 1, forKey: elem)
  }
  
  for (key, value) in brrDict {
    if arrDict[key] == nil || value > arrDict[key]! {
      missing.append(key)
    }
  }
  
  return missing.sorted()
}
