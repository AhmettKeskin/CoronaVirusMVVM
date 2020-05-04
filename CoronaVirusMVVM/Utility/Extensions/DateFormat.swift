//
//  DateFormat.swift
//  CoronaVirusMVVM
//
//  Created by Ali Emre Değirmenci on 29.04.2020.
//  Copyright © 2020 Ali Emre Degirmenci. All rights reserved.
//

import Foundation

extension Date {
    func getDate(time: Double) -> String {
        let date = Double(time / 1000)
        
        let format = DateFormatter()
        format.dateFormat = "MM - dd - YYYY hh:mm a"
        return format.string(from: Date(timeIntervalSince1970:
            TimeInterval(
                exactly: date)!))
    }
    public func formattedDate(of publishedAt: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        let publishedDate = formatter.date(from: publishedAt)
        formatter.dateFormat = "dd-MMMM-yyyy"
        let formattedDate = formatter.string(from: publishedDate!)
        return formattedDate
    }
}
