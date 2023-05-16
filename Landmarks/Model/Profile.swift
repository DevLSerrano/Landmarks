//
//  Profile.swift
//  Landmarks
//
//  Created by Leonardo Serrano on 11/05/23.
//

import Foundation


struct Profile {
    var userName: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(userName: "Leonardo Serrano")
    
    enum Season: String, CaseIterable, Identifiable {
            case spring = "🌷"
            case summer = "🌞"
            case autumn = "🍂"
            case winter = "☃️"

            var id: String { rawValue }
        }
}
