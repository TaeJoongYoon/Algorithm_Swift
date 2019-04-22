import Foundation

// HackerRank : https://www.hackerrank.com/challenges/fraudulent-activity-notifications/problem

func median(_ dict: [Int], _ d: Int) -> Int {
  var count = 0
  
  if d % 2 == 0 { // Even
    for (key, value) in dict.enumerated() {
      count += value
      if count >= d / 2 {
        if count >= (d / 2) + 1 { return key * 2 }
        else {
          for i in key+1...dict.count {
            if dict[i] > 0 { return key + i }
          }
        }
      }
    }
  } else { // Odd
    for (key, value) in dict.enumerated() {
      count += value
      if count >= (d + 1) / 2 { return key * 2 }
    }
  }
  
  return 1 // Default... meaningless
}

func activityNotifications(expenditure: [Int], d: Int) -> Int {
  var notifications = 0
  var dict = Array(repeating: 0, count: 201)
  
  // Init
  for i in expenditure[0..<d] {
    dict[i] += 1
  }
  
  for i in d..<expenditure.count {
    let newValue = expenditure[i]
    let oldValue = expenditure[i-d]
    
    if expenditure[i] >= median(dict, d) {
      notifications += 1
    }
    
    if newValue != oldValue {
      dict[newValue] += 1
      dict[oldValue] -= 1
    }
  }
  
  return notifications
}
