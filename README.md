# LIDateUtility

[![CI Status](https://img.shields.io/travis/vvdodiya/LIDateUtility.svg?style=flat)](https://travis-ci.org/vvdodiya/LIDateUtility)
[![Version](https://img.shields.io/cocoapods/v/LIDateUtility.svg?style=flat)](https://cocoapods.org/pods/LIDateUtility)
[![License](https://img.shields.io/cocoapods/l/LIDateUtility.svg?style=flat)](https://cocoapods.org/pods/LIDateUtility)
[![Platform](https://img.shields.io/cocoapods/p/LIDateUtility.svg?style=flat)](https://cocoapods.org/pods/LIDateUtility)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

LIDateUtility is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LIDateUtility'
```

## Description

Here are the full desction of the method and pose 

### 1)  Get current year

```swift
let currentYear = LIDateUtility.getCurrentYear()
print("Current year: \(currentYear)")
```

### 2)  Get current month

```swift
let currentMonth = LIDateUtility.getCurrentMonth()
print("Current Month: \(currentMonth)")
```


### 3) Get current day

```swift
let currentDay = LIDateUtility.getCurrentDay()
print("Current Date: \(currentDay)")
```

### 4) Get year from date

```swift
let year = LIDateUtility.getYearFromDate(date: date!)
print("Year of date: \(year)")
```

### 5) Get month from date

```swift
let month = LIDateUtility.getMonthFromDate(date: date!)
print("Month of date: \(month)")
```

### 6) Get day from date

```swift
let day = LIDateUtility.getDayFromDate(date: dDate!)
print("Day of date: \(day)")
```

### 7) Get time from date

```swift
let time = LIDateUtility.getTimeFromDate(date: Date())
print(“Time: \(time)”)
```

### 8) Get name of week day from date

```swift
let dayOfWeek = LIDateUtility.getWeekDayFromDate(date: Date())
print("Day of week of date: \(dayOfWeek)")
```

### 9) Date from String

```swift
if let datefromstring = LIDateUtility.getDateFromString(stringDate: "01-03-2011 10:12:45", format: "dd-MM-yyyy HH:mm:ss")
{
    print("Date from string: \(datefromstring)")
}
```

### 10) String from Date

```swift
let stringFromDate = LIDateUtility.getStringFromDate(date: date, format: "dd-MM-yyyy")
print("String from date: \(stringFromDate)")
```

### 11) Get timestamp from date

```swift
let timeStamp = LIDateUtility.getTimestampFromDate(date: Date()) 
print("Timestamp from date: \(timeStamp)")
```

### 12) Get date from timestamp

```swift
let dateFromTimestamp = LIDateUtility.getDateFromTimestamp(timeStamp: 1552292651767)
print("Date from Timestamp: \(dateFromTimestamp)")
```

### 13) Get age

```swift
let date = Calendar.current.date(from: component)
if let age = LIDateUtility.getAge(birthDate: date!)
{
    print("\nAge: \(age)")
}
else
{
    print("\nAge: Invalid birth date")
}
```

### 14) Compare Two Dates

```swift
let comparisonString = LIDateUtility.compareDates(date1: Date(), date2: date)) 
print("Comparison of dates: \(comparisonString)")
```

### 15) Get Difference between two dates in days

```swift
let differenceInDays = LIDateUtility.getDifferenceBetweenTwoDatesInDays(date1: Date(), date2: date!) 
print("Difference of days: \(differenceInDays)")
```

### 16) Get Difference between two dates in months

```swift
let differenceInMonths = LIDateUtility.getDifferenceBetweenTwoDatesInMonths(date1: Date(), date2: date!)
print("Difference of months: \(differenceInMonths)")
```

### 17) Get Difference between two dates in years

```swift
let differenceInYears = LIDateUtility.getDifferenceBetweenTwoDatesInYears(date1: Date(), date2: date!)
print("Difference of years: \(differenceInYears)")
```

### 18) Get Difference between two dates in hours

```swift
let differenceInHours = LIDateUtility.getDifferenceBetweenTwoDatesInHours(date1: Date(), date2: date!)
print("Difference of hours: \(differenceInHours)")
```

### 19) Get Difference between two dates in minutes

```swift
let differenceInMinutes = LIDateUtility.getDifferenceBetweenTwoDatesInMinutes(date1: Date(), date2: date!)
print("Difference of minutes: \(differenceInMinutes)")
```

### 20) Get Difference between two dates in seconds

```swift
let differenceInSeconds = LIDateUtility.getDifferenceBetweenTwoDatesInSeconds(date1: Date(), date2: date!)
print("Difference of seconds: \(differenceInSeconds)")
```

### 21) Add number of days to date :

```swift
let newDate = LIDateUtility.addNumberOfDaysToDate(date: Date(), count: 4)
print("Date by adding days: \(newDate)")
```

### 22) Add number of months to date :

```swift
let newDate = LIDateUtility.addNumberOfMonthsToDate(date: Date(), count: 7)
print("Date by adding months: \(newDate)")
```

### 23) Add number of years to date

```swift
let newDate = LIDateUtility.addNumberOfYearsToDate(date: Date(), count: 2)
print("Date by adding years: \(newDate)")
```

### 24) Add number of hours to date

```swift
let newDate = LIDateUtility.addNumberOfHoursToDate(date: Date(), count: 5)
print("Date by adding hours: \(newDate)")
```

### 25) Add number of minutes to date

```swift
let newDate = LIDateUtility.addNumberOfMinutesToDate(date: Date(), count: 60)
print("Date by adding minutes: \(newDate)")
```

### 26) Add number of seconds to date

```swift
let newDate = LIDateUtility.addNumberOfSecondsToDate(date: Date(), count: 60)
print("Date by adding seconds: \(newDate)")
```

### 27) Subtract(Minus) number of days from date

```swift
let newDate = LIDateUtility.subtractNumberOfDaysFromDate(date: Date(), count: 6)
print("Date by subtracting days: \(newDate)")
```

### 28) Subtract(Minus) number of months from date

```swift
let newDate = LIDateUtility.subtractNumberOfMonthsFromDate(date: Date(), count: 4)
print("Date by subtracting months: \(newDate)")
```

### 29) Subtract(Minus) number of years from date

```swift
let newDate = LIDateUtility.subtractNumberOfYearsFromDate(date: Date(), count: 10)
print("Date by subtracting years: \(newDate)")
```

### 30) Subtract(Minus) number of hours from date :

```swift
let newDate = LIDateUtility.subtractNumberOfHoursFromDate(date: Date(), count: 4)
print("Date by subtracting hours: \(newDate)")
```

### 31) Subtract(Minus) number of minutes from date :

```swift
let newDate = LIDateUtility.subtractNumberOfMinutesFromDate(date: Date(), count: 60)
print("Date by subtracting minutes: \(newDate)")
```

### 32) Subtract(Minus) number of seconds from date :

```swift
let newDate = LIDateUtility.subtractNumberOfSecondsFromDate(date: Date(), count: 120)
print("Date by subtracting seconds: \(newDate)")
```

### 33) Check if date is today’s date

```swift
let isToday = LIDateUtility.isToday(date: date)
If isToday
{
    print(“The date: \(date) is today’s date”)
}
else
{
    print(“The date: \(date) is not today’s date”)
}
```

### 34) Check if  week day of date is weekend

```swift
let isWeekend = LIDateUtility.isWeekEnd(date: date)
If isWeekend
{
    print(“The weekday of date: \(date) is weekend”)
}
else
{
    print(“The weekday of date: \(date) is not weekend”)
}
```

### 35) Convert local time to UTC time

```swift
if let utcDate = LIDateUtility.convertLocalTimeToUTC(date: Date())
{
    print("Local: \(Date()) || UTC: \(utcDate)")
}
else
{
    print("Local to UTC: Can't convert")
}
```

### 36) Convert UTC time to local time

```swift
if let localDate = LIDateUtility.convertUTCTimeToLocal(date: utcdate)
{
	print("UTC: \(utcdate) || Local: \(localDate)")
}
else
{
	print("UTC to Local: Can't convert")
}
```

### 37) Get current timezone

```swift
let timeZone = LIDateUtility.getCurrentTimeZone()
print(“Current timezone: \(timeZone)”)
```

### 38) Get timezone from identifier

```swift
if let timeZone = LIDateUtility.getTimeZoneBy(id: "America/Los_Angeles")
{
    print("TimeZone by Id: \(timeZone.identifier)")
}
else
{
    print("TimeZone by Id: Incorrect Id")
}
```


## License

LIDateUtility is available under the MIT license. See the LICENSE file for more info.
