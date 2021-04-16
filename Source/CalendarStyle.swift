import Foundation
import UIKit

public enum DateStyle {
    ///Times should be shown in the 12 hour format
    case twelveHour
    
    ///Times should be shown in the 24 hour format
    case twentyFourHour
    
    ///Times should be shown according to the user's system preference.
    case system
}

let smartDarkBlue = UIColor(red: 25/255, green: 52/255, blue: 70/255, alpha: 1.0)
let smartLightBlue = UIColor(red: 221/255, green: 233/255, blue: 242/255, alpha: 1.0)
let smartDarkGold = UIColor(red: 221/255, green: 179/255, blue: 81/255, alpha: 1.0)
let smartLightGold = UIColor(red: 239/255, green: 208/255, blue: 139/255, alpha: 1.0)
let smartMiddleBlue = UIColor(red: 64/225, green: 130/225, blue: 173/225, alpha: 1.0)

public struct CalendarStyle {
  public var header = DayHeaderStyle()
  public var timeline = TimelineStyle()
  public init() {}
}

public struct DayHeaderStyle {
  public var daySymbols = DaySymbolsStyle()
  public var daySelector = DaySelectorStyle()
  public var swipeLabel = SwipeLabelStyle()
  public var backgroundColor = UIColor(red:252/255, green:252/255, blue:252/255, alpha:1.0)
  public init() {}
}

public struct DaySelectorStyle {
    public var activeTextColor = UIColor.white
  public var selectedBackgroundColor = smartDarkGold

  public var weekendTextColor = smartDarkBlue
  public var inactiveTextColor = smartDarkBlue
  public var inactiveBackgroundColor = UIColor.clear

  public var todayInactiveTextColor = smartDarkBlue
  public var todayActiveTextColor = UIColor.white
  public var todayActiveBackgroundColor = smartDarkGold
    
  public var font = UIFont.systemFont(ofSize: 18)
  public var todayFont = UIFont.boldSystemFont(ofSize: 18)
  
  public init() {}
}

public struct DaySymbolsStyle {
  public var weekendColor = smartDarkBlue
  public var weekDayColor = smartDarkBlue
  public var font = UIFont.systemFont(ofSize: 10)
  public init() {}
}

public struct SwipeLabelStyle {
  public var textColor = SystemColors.label
  public var font = UIFont.systemFont(ofSize: 15)
  public init() {}
}

public struct TimelineStyle {
  public var allDayStyle = AllDayViewStyle()
  public var timeIndicator = CurrentTimeIndicatorStyle()
  public var timeColor = smartDarkBlue
  public var separatorColor = smartDarkBlue
 public var backgroundColor = UIColor.white
  public var font = UIFont.boldSystemFont(ofSize: 11)
  public var dateStyle : DateStyle = .twentyFourHour
  public var eventsWillOverlap: Bool = false
  public var minimumEventDurationInMinutesWhileEditing: Int = 30
  public var splitMinuteInterval: Int = 15
  public var verticalDiff: CGFloat = 50
  public var verticalInset: CGFloat = 10
  public var leadingInset: CGFloat = 53
  public var eventGap: CGFloat = 0
  public init() {}
}

public struct CurrentTimeIndicatorStyle {
  public var color = smartLightGold
  public var font = UIFont.systemFont(ofSize: 12)
    public var dateStyle : DateStyle = .twentyFourHour
  public init() {}
}

public struct AllDayViewStyle {
  public var backgroundColor: UIColor = SystemColors.systemGray4
  public var allDayFont = UIFont.systemFont(ofSize: 12.0)
  public var allDayColor: UIColor = SystemColors.label
  public init() {}
}
