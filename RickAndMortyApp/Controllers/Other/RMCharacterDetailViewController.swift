//
//  RMCharacterDetailViewController.swift
//  RickAndMortyApp
//
//  Created by Tyagi, Arpan on 11.01.2024.
//

import UIKit

// Controller to show info about Character
final class RMCharacterDetailViewController: UIViewController {
    private let viewModel: RMCharacterDetailViewModel
    
    init(viewModel: RMCharacterDetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil,
                   bundle: nil)
    } 
    
    required init?(coder: NSCoder){
        fatalError("Unsupported")
    }
    
    //MARK: - Lifecycle functions
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = viewModel.title
    }
    
    
}
