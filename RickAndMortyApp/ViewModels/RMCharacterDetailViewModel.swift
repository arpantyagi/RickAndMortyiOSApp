//
//  RMCharacterDetailViewModel.swift
//  RickAndMortyApp
//
//  Created by Tyagi, Arpan on 11.01.2024.
//

import Foundation

final class RMCharacterDetailViewModel {
    
    private let character: RMCharacter
    
    public let title: String
    
    init(character: RMCharacter){
        self.character = character
        self.title = character.name
        
    }
    
}
