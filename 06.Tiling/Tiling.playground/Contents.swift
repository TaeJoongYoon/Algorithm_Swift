import Foundation

// BOJ : https://www.acmicpc.net/problem/2133

var D = Array(repeating: 0, count: 31)

func tiling(_ n: Int) -> Int {
  if n == 0 { return 1 }
  if n == 1 { return 0 }
  if n == 2 { return 3 }
  if D[n] != 0 { return D[n] }
  else {
    var result = 3 * tiling(n-2)
    for i in stride(from: 4, through: n, by: 2) {
      result += 2 * tiling(n-i)
    }
    D[n] = result
    return D[n]
  }
}

print(tiling(8)) // 171
