//
//  UserViewModel.swift
//  FurnitureApp
//
//  Created by Игорь Девин on 10.05.2024.
//

import Foundation

/// Модель для настроек Юзера

struct UserSettings: Identifiable, Hashable {
    let id = UUID()
    
    let title: String
    
    let icon: String
    
    let notification: Int?
}

/// Вью модель для Юзера
final class UserViewModel: ObservableObject {
    public let userSettings: [UserSettings] = [.init(title: "Сity", icon: "envelope", notification: 3),
                                               .init(title: "Notification", icon: "bell", notification: 4),
                                               .init(title: "Account details", icon: "person", notification: nil),
                                               .init(title: "My purchase", icon: "basket.fill", notification: nil),
                                               .init(title: "Settings", icon: "gearshape", notification: nil)]
}
