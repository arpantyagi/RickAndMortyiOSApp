//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Tyagi, Arpan on 29.12.2023.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach({
            self.addSubview($0)
        })
    }
}
