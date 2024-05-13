//
//  ItemsViewModel.swift
//  FurnitureApp
//
//  Created by Игорь Девин on 10.05.2024.
//

import Foundation

/// Вью модель для продуктов
final class ItemsViewModel: ObservableObject {
    let goods: [ItemsModel] = [.init(image: "image 1", title: "Sofa", newPrice: 999, oldPrice: 2000),
                               .init(image: "image2", title: "Armchair", newPrice: 99, oldPrice: 200),
                               .init(image: "image3", title: "Bed", newPrice: 1000, oldPrice: 2000),
                               .init(image: "image4", title: "Table", newPrice: 600, oldPrice: 1200),
                               .init(image: "image5", title: "Сhair", newPrice: 99, oldPrice: 200),
                               .init(image: "image6", title: " Wardrobe", newPrice: 899, oldPrice: 1100)]
    
    @Published var selectedItems: [ItemsModel] = []
    @Published var detailSelectedItem: ItemsModel?
    
    @Published var totalPrice = 0
    @Published var count = 0

    
    public func appendItem(item: ItemsModel) {
        totalPrice += item.newPrice
    }
    
    public func deleteItem(item: ItemsModel) {
        totalPrice -= item.newPrice
    }
    
}
