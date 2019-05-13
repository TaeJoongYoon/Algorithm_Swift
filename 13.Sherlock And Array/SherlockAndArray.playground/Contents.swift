import Foundation

// HackerRank : https://www.hackerrank.com/challenges/sherlock-and-array/problem

func balancedSums(arr: [Int]) -> String {
  let newArray = [0] + arr + [0]
  var leftSum = 0
  var rightSum = newArray.reduce(0, +) - newArray[1]
  var isEqual = leftSum == rightSum
  
  if isEqual { return "YES" }
  for i in 1..<newArray.count-1 {
    leftSum += newArray[i]
    rightSum -= newArray[i+1]
    if leftSum == rightSum {
      isEqual = true
      break
    }
  }
  
  return isEqual ? "YES" : "NO"
}
