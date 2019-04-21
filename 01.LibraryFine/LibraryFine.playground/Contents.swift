import Foundation

struct Day {
  var year: Int
  var month: Int
  var day: Int
}


func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
  
  let returned = Day(year: y1, month: m1, day: d1)
  let due = Day(year: y2, month: m2, day: d2)
  
  guard returned.year >= due.year else { return 0 }
  guard returned.year == due.year else { return 10000 }
  
  guard returned.month >= due.month else { return 0 }
  guard returned.month == due.month else { return 500 * (returned.month - due.month) }
  
  guard returned.day <= due.day else { return 15 * (returned.day - due.day) }
  
  return 0
}
