//
//  Helpers.swift
//  NewsTestApp
//
//  Created by _deniro0001_ on 15.04.2022.
//

import Foundation

func getTime(input: String) -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    if let date = formatter.date(from: input) {
        print(date)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        formatter.locale = Locale(identifier: "en_US")
        
        return formatter.string(from: date)
    }
    
    return ""
}
