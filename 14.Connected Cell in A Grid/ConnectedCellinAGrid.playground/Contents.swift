import Foundation

// HackerRank : https://www.hackerrank.com/challenges/connected-cell-in-a-grid/problem

func bps(_ matrix: inout [[Int]], _ i: Int, _ j: Int, _ count: inout Int) {
  matrix[i][j] = 0
  count += 1
  
  if j-1 > -1 && matrix[i][j-1] == 1 { bps(&matrix, i, j-1, &count) } // north
  if i+1 < matrix.count && j-1 > -1 && matrix[i+1][j-1] == 1 { bps(&matrix, i+1, j-1, &count) } // northeast
  if i+1 < matrix.count && matrix[i+1][j] == 1 { bps(&matrix, i+1, j, &count) } // east
  if i+1 < matrix.count && j+1 < matrix[i].count && matrix[i+1][j+1] == 1 { bps(&matrix, i+1, j+1, &count) } // southeast
  if j+1 < matrix[i].count && matrix[i][j+1] == 1 { bps(&matrix, i, j+1, &count) } // south
  if i-1 > -1 && j+1 < matrix[i].count && matrix[i-1][j+1] == 1 { bps(&matrix, i-1, j+1, &count) } // southwest
  if i-1 > -1 && matrix[i-1][j] == 1 { bps(&matrix, i-1, j, &count) } // west
  if i-1 > -1 && j-1 > -1 && matrix[i-1][j-1] == 1 { bps(&matrix, i-1, j-1, &count) } // northwest
}

func connectedCell(matrix: [[Int]]) -> Int {
  var visited: [[Int]]
  var initialValue: Int
  var connected = 0
  
  for i in 0..<matrix.count {
    for j in 0..<matrix[i].count {
      if matrix[i][j] == 1 {
        visited = matrix
        initialValue = 0
        bps(&visited, i, j, &initialValue)
        connected = max(connected, initialValue)
      }
    }
  }
  
  return connected
}
