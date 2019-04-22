import Foundation

// HackerRank : https://www.hackerrank.com/challenges/lilys-homework/problem

func swap(_ arr: [Int], _ sorted: [Int], _ dictionary: [Int: Int]) -> Int {
  var dict = dictionary
  var origin = arr
  var count = 0
  
  for i in 0..<origin.count {
    if origin[i] != sorted[i] {
      count += 1
      
      dict[origin[i]] = dict[sorted[i]]
      origin.swapAt(i, dict[sorted[i]]!)
    }
  }
  
  return count
}

func lilysHomework(arr: [Int]) -> Int {
  var dict = [Int: Int]()
  for (i, element) in arr.enumerated() {
    dict.updateValue(i, forKey: element)
  }
  
  let incSorted = arr.sorted()
  let decSorted = arr.sorted(by: > )
  
  return min(swap(arr, incSorted, dict), swap(arr, decSorted, dict))
}
