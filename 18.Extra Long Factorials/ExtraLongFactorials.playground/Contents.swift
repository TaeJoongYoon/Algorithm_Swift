import Foundation

// HackerRank : https://www.hackerrank.com/challenges/extra-long-factorials/problem

private func multiply(_ a: String, by b: Int) -> String{
    let temp: [Int] = a.map { Int(String($0))! * b}
    var result = ""
    var remainer = 0

    for number in temp.reversed(){
        let total = number + remainer
        remainer = total / 10
        result.insert(contentsOf: "\(total % 10)", at: result.startIndex)
    }
    while remainer > 0 {
        result.insert(contentsOf: "\(remainer % 10)", at: result.startIndex)
        remainer /= 10
    }

    return result
}

func extraLongFactorials(n: Int) -> Void {
  var result = "1"
  for i in 1...n{
      result = multiply(result, by: i)
  }
  print(result)
}


