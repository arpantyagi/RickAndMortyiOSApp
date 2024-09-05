//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Tyagi, Arpan on 29.12.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
