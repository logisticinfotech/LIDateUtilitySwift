//
//  LIDateUtility.swift
//  LIDateUtility
//
//  Created by Bhavin on 04/04/19.
//  Copyright © 2019 Logistic Infotech PVT LTD. All rights reserved.
//

import Foundation

public class LIDateUtility {
    
    //MARK: - GET
    //
    public static func getCurrentYear() -> Int{
        return Calendar.current.component(.year, from: Date())
    }
    
    public static func getCurrentMonth() -> Int{
        return Calendar.current.component(.month, from: Date())
    }
    
    public static func getCurrentDay() -> Int{
        return Calendar.current.component(.day, from: Date())
    }
    
    public static func getYearFromDate(date: Date) -> Int{
        let year = Calendar.current.dateComponents([.year], from: date)
        return (year.year!)
    }
    
    public static func getMonthFromDate(date: Date) -> Int{
        let month = Calendar.current.dateComponents([.month], from: date)
        return (month.month!)
    }
    
    public static func getDayFromDate(date: Date) -> Int{
        let date = Calendar.current.dateComponents([.day], from: date)
        return (date.day!)
    }
    
    public static func getTimeFromDate(date: Date) -> String{
        let calendar = Calendar.current
        let time = calendar.dateComponents([.hour, .minute, .second], from: date)
        return "\(time.hour!):\(time.minute!):\(time.second!)"
    }
    
    public static func getWeekDayFromDate(date: Date) -> String {
        let f = DateFormatter()
        let day = f.weekdaySymbols[Calendar.current.component(.weekday, from: date)-1]
        return day
    }
    
    public static func getDateFromString(stringDate: String, format: String) -> Date? {
        let dformatter = DateFormatter()
        dformatter.dateFormat = format
        
        return dformatter.date(from: stringDate)
    }
    
    public static func getStringFromDate(date: Date, format: String) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let str = formatter.string(from: date)
        return str
    }
    
    public static func getTimestampFromDate(date: Date) -> Int64 {
        let milis = date.timeIntervalSince1970
        return Int64(Int(milis*1000))
    }
    
    public static func getDateFromTimestamp(timeStamp: Int64) -> Date {
        return Date(timeIntervalSince1970: TimeInterval(timeStamp)/1000)
    }
    
    public static func getAge(birthDate: Date) -> Int? {
        switch birthDate.compare(Date()) {
        case .orderedSame: return 0
        case .orderedAscending:
            let age = Calendar.current.dateComponents([.year], from: birthDate, to: Date())
            return age.year
        case .orderedDescending: return nil
        default:
            return 0
        }
    }
    
    //MARK: - Compare and Difference
    //
    public static func compareDates(date1: Date, date2: Date) -> String {
        switch date1.compare(date2) {
        case .orderedSame: return "The two dates are same"
        case .orderedAscending: return "Date1 is earlier than date2"
        case .orderedDescending: return "Date1 is later than date2"
        default:
            return "Sorry! Can't compare"
        }
    }
    
    public static func getDifferenceBetweenTwoDatesInDays(date1: Date, date2: Date) -> Int {
        let days = Calendar.current.dateComponents([.day], from: date1, to: date2)
        return days.day ?? 0
    }
    
    public static func getDifferenceBetweenTwoDatesInMonths(date1: Date, date2: Date) -> Int{
        let months = Calendar.current.dateComponents([.month], from: date1, to: date2)
        return months.month ?? 0
    }
    
    public static func getDifferenceBetweenTwoDatesInYears(date1: Date, date2: Date) -> Int{
        let years = Calendar.current.dateComponents([.year], from: date1, to: date2)
        return years.year ?? 0
    }
    
    public static func getDifferenceBetweenTwoDatesInHours(date1: Date, date2: Date) -> Int{
        let hours = Calendar.current.dateComponents([.hour], from: date1, to: date2)
        return hours.hour ?? 0
    }
    
    public static func getDifferenceBetweenTwoDatesInMinutes(date1: Date, date2: Date) -> Int{
        let minutes = Calendar.current.dateComponents([.minute], from: date1, to: date2)
        return minutes.minute ?? 0
    }
    
    public static func getDifferenceBetweenTwoDatesInSeconds(date1: Date, date2: Date) -> Int{
        let seconds = Calendar.current.dateComponents([.second], from: date1, to: date2)
        return seconds.second ?? 0
    }
    
    //MARK: - UTC,LOCAL,TIMEZONE
    //
    public static func convertLocalTimeToUTC(date: Date) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
        let convertedString = formatter.string(from: date)
        formatter.timeZone = TimeZone(identifier: "UTC")
        return formatter.date(from: convertedString)
        
    }
    
    public static func convertUTCTimeToLocal(date: Date) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
        formatter.timeZone = TimeZone(identifier: "UTC")
        let convertedString = formatter.string(from: date)
        formatter.timeZone = TimeZone.current
        return formatter.date(from: convertedString)
        
    }
    
    public static func getCurrentTimeZone() -> TimeZone{
        return TimeZone.current
    }
    
    public static func getTimeZoneBy(id: String) -> TimeZone?{
        return TimeZone(identifier: id)
    }
    
    //MARK: - Addition and Subtraction
    //
    public static func addNumberOfDaysToDate(date: Date, count: Int) -> Date{
        let newComponent = DateComponents(day: count)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
    }
    
    public static func addNumberOfMonthsToDate(date: Date, count: Int) -> Date{
        let newComponent = DateComponents(month: count)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
    }
    
    public static func addNumberOfYearsToDate(date: Date, count: Int) -> Date{
        let newComponent = DateComponents(year: count)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
    }
    
    public static func addNumberOfHoursToDate(date: Date, count: Int) -> Date{
        let newComponent = DateComponents(hour: count)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
    }
    
    public static func addNumberOfMinutesToDate(date: Date, count: Int) -> Date{
        let newComponent = DateComponents(minute: count)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
    }
    
    public static func addNumberOfSecondsToDate(date: Date, count: Int) -> Date {
        let newComponent = DateComponents(second: count)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
        
    }
    
    public static func subtractNumberOfDaysFromDate(date: Date, count: Int) -> Date{
        let countMinus = count * (-1)
        let newComponent = DateComponents(day: countMinus)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
    }
    
    public static func subtractNumberOfMonthsFromDate(date: Date, count: Int) -> Date{
        let countMinus = count * (-1)
        let newComponent = DateComponents(month: countMinus)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
    }
    
    public static func subtractNumberOfYearsFromDate(date: Date, count: Int) -> Date{
        let countMinus = count * (-1)
        let newComponent = DateComponents(year: countMinus)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
    }
    
    public static func subtractNumberOfHoursFromDate(date: Date, count: Int) -> Date{
        let countMinus = count * (-1)
        let newComponent = DateComponents(hour: countMinus)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
    }
    
    public static func subtractNumberOfMinutesFromDate(date: Date, count: Int) -> Date{
        let countMinus = count * (-1)
        let newComponent = DateComponents(minute: countMinus)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
    }
    
    public static func subtractNumberOfSecondsFromDate(date: Date, count: Int) -> Date {
        let countMinus = count * (-1)
        let newComponent = DateComponents(second: countMinus)
        
        guard let newDate = Calendar.current.date(byAdding: newComponent, to: date) else {
            return date
        }
        return newDate
        
    }
    
    //MARK: - Other
    //
    public static func isToday(date: Date) -> Bool{
        return Date() == date
    }
    
    public static func isWeekEnd(date: Date) -> Bool{
        return Calendar.current.isDateInWeekend(date)
    }
}
