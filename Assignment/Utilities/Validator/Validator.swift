//
//  Validator.swift
//  Assignment
//
//  Created by Kripa on 18/05/23.
//

import Foundation

extension Date {
    
    func getDateOrTimeOrYesterday() -> String {
        
        let currentDateTime = Date()
        
        let calendar = Calendar.current
        if calendar.isDateInYesterday(self) {
            return "Yesterday"
        }
        
        let formatter = DateFormatter()
        formatter.timeStyle = .none
        formatter.dateStyle = .short
        
        var strDateTimeToShow = ""
        
        if formatter.string(from: currentDateTime) == formatter.string(from: self)
        {
            formatter.timeStyle = .short
            formatter.dateStyle = .none
            strDateTimeToShow = formatter.string(from: self)
        }else {
            strDateTimeToShow = self.convertToDateOnlyFormat()
        }
        return strDateTimeToShow
    }
    
    func getElapsedInterval() -> String {
        
        let interval = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: self, to: Date())
        
        if let year = interval.year, year > 0 {
            return year == 1 ? "\(year)" + " " + "year" :
                "\(year)" + " " + "years"
        } else if let month = interval.month, month > 0 {
            return month == 1 ? "\(month)" + " " + "month" :
                "\(month)" + " " + "months"
        } else if let day = interval.day, day > 0 {
            return day == 1 ? "\(day)" + " " + "day" :
                "\(day)" + " " + "days"
        } else if let hour = interval.hour, hour > 0 {
            return hour == 1 ? "\(hour)" + " " + "hour" :
                "\(hour)" + " " + "hours"
        } else if let minute = interval.minute, minute > 0 {
            return minute == 1 ? "\(minute)" + " " + "minute" :
                "\(minute)" + " " + "minutes"
        } else if let second = interval.second, second > 0 {
            return second == 1 ? "\(second)" + " " + "second" :
                "\(second)" + " " + "seconds"
        } else {
            return "a moment ago"
        }
        
    }
    
    func convertToDateOnlyFormat() -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        return formatter.string(from: self)
    }
    
}

extension String {
    func convertDate() -> Date {
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.timeZone = TimeZone(abbreviation: "UTC")
        
        if self.contains("."){
            dateFormatterGet.dateFormat = "YYYY-MM-dd'T'HH:mm:ss.SSSSSS'Z'"
        }else{
            dateFormatterGet.dateFormat = "YYYY-MM-dd'T'HH:mm:ss'Z'"
        }
        
        var date = Date()
        date = dateFormatterGet.date(from: self)!
        dateFormatterGet.timeZone = TimeZone.current
        let strReturn:String = dateFormatterGet.string(from: date)
        let dateReturn:Date = dateFormatterGet.date(from: strReturn)!
        
        return dateReturn
    }
}
