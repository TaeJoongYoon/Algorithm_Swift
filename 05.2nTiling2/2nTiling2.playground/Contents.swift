import Foundation

// BOJ : https://www.acmicpc.net/problem/11727

var D = Array(repeating: 0, count: 1001)

func tiling(_ n: Int) -> Int {
  if n == 1 { return 1 }
  if n == 2 { return 3 }
  if D[n] != 0 { return D[n] }
  else {
    D[n] = (tiling(n-1) + 2 * tiling(n-2)) % 10007
    return D[n]
  }
}

print(tiling(2)) // 3
print(tiling(8)) // 171
