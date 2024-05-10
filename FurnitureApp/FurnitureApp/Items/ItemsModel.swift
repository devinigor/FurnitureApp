//
//  ItemsModel.swift
//  FurnitureApp
//
//  Created by Игорь Девин on 10.05.2024.
//

import Foundation

/// Модель для товара
struct ItemsModel: Hashable{
    let id = UUID()
    ///Картинка
    let image: String
    /// Имя товара
    let title: String
    /// Новая цена
    let newPrice: Int
    /// Старая цена
    let oldPrice: Int
}
