//
//  CharacterListView.swift
//  RickAndMortyApp
//
//  Created by Tyagi, Arpan on 28.12.2023.
//

import UIKit

/// View that handles showing list of Characters and loader
class CharacterListView: UIView {
    
    private let viewModel = CharacterListViewViewModel()
    
    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        collectionView.isHidden = true
        collectionView.alpha = 0
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        addSubviews(collectionView, spinner)
        addConstraints()
        spinner.startAnimating()
        viewModel.fetchCharacters()
        setUpCollectionView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraints(){
        NSLayoutConstraint.activate([
            spinner.widthAnchor.constraint(equalToConstant: 100),
            spinner.heightAnchor.constraint(equalToConstant: 100),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            ])
            
    }
    
    private func setUpCollectionView() {
        
        collectionView.dataSource = viewModel
        collectionView.delegate = viewModel
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: {
            
            self.spinner.stopAnimating()
            
            self.collectionView.isHidden = false
            
            UIView.animate(withDuration: 0.3) {
                self.collectionView.alpha = 1
            }
        })
    }


}