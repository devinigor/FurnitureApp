//
//  PaymentViewModel.swift
//  FurnitureApp
//
//  Created by Игорь Девин on 14.05.2024.
//

import Foundation

final class PaymentViewModel: ObservableObject {
    @Published var cardNumber = ""
    @Published var cardName = ""
    @Published var cardSecondName = ""
    @Published var cvc = ""
    @Published var day = Date()
}
