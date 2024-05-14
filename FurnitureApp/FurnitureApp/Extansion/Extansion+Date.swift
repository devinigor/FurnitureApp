//
//  Extansion+Date.swift
//  FurnitureApp
//
//  Created by Игорь Девин on 14.05.2024.
//

import Foundation

 extension Date {
     func formater() -> String {
         let cal = Calendar.current
         let component = DateComponents()
         let ca = cal.dateComponents(in: TimeZone(secondsFromGMT: 0)!, from: self)
         return "\(ca.day ?? 0) / \(ca.year ?? 00)"
     }
 }
