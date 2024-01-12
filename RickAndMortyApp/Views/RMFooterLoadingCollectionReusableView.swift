//
//  RMFooterLoadingCollectionReuasableView.swift
//  RickAndMortyApp
//
//  Created by Tyagi, Arpan on 12.01.2024.
//

import UIKit

final class RMFooterLoadingCollectionReusableView: UICollectionReusableView {
    static let identifier = "RMFooterLoadingCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraint() {
        
    }
}
