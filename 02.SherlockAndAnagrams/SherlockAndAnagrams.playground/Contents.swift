import Foundation

// HackerRank : https://www.hackerrank.com/challenges/library-fine/problem

extension String {
  subscript (_ index: Int) -> String {
    return String(self[self.index(startIndex, offsetBy: index)])
  }
}

func sherlockAndAnagrams(s: String) -> Int {
  var anagramsCount = 0
  var anagramDictionary = [String: Int]()
  let n = s.count
  
  for i in 0..<n {
    var subString: [Character] = []
    
    for j in i..<n {
      subString = (subString + s[j]).sorted()
      if let value = anagramDictionary[String(subString)] {
        anagramDictionary.updateValue(value + 1, forKey: String(subString))
      } else {
        anagramDictionary.updateValue(1, forKey: String(subString))
      }
    }
  }
  
  for (key, value) in anagramDictionary {
    anagramsCount += value * (value - 1) / 2
  }
  
  return anagramsCount
}
