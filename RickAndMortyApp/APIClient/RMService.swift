//
//  RMService.swift
//  RickAndMortyApp
//
//  Created by Tyagi, Arpan on 22.12.2023.
//

import Foundation

/// Primary API Service object to get Rick and Morty Data
final class RMService {
    
    /// Shared Singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
