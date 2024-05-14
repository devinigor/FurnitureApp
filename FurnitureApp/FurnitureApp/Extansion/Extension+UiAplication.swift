//
//  Extension+UiAplication.swift
//  FurnitureApp
//
//  Created by Игорь Девин on 10.05.2024.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
