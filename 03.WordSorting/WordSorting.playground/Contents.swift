import Foundation

// BOJ : https://www.acmicpc.net/problem/1181

func compare(_ a: String, _ b: String) -> Bool {
  if a.count < b.count {
    return true
  } else if a.count > b.count {
    return false
  } else {
    return a < b
  }
}

let inputs = ["but", "i", "wont", "hesitate", "no", "more", "no", "more", "it", "cannot", "wait", "im", "yours"]
let results = inputs.sorted { compare($0, $1) }

for (i, result) in results.enumerated() {
  if i > 0 && results[i-1] == results[i] {
    continue
  } else {
    print(result)
  }
}
