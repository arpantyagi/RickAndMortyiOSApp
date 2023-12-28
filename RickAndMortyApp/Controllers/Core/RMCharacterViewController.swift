//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Tyagi, Arpan on 22.12.2023.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"

        
        RMService.shared.execute( .listCharactersRequest,
                                 expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.count))
                print("Pages: "+String(model.info.pages))
                print("Page result count: "+String(+model.results.count))
            case .failure(let error):
                print(String(describing: error))
                
            }
        }
    }
    
}
