//
//  RMRequest.swift
//  RickAndMortyApp
//
//  Created by Tyagi, Arpan on 22.12.2023.
//

import Foundation

/// Object that reprsents a single API call
final class RMRequest {
    
    /// API Constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    let endpoint: RMEndpoint
    
    /// path components for API, if any
    let pathComponents: [String]
    
    /// query arguments for API, if any
    let queryParameters: [URLQueryItem]

    /// Constructed url of the api request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator:  "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    
    /// Construct request
    ///  - Parameters
    ///     - endpoint: Target endpoint
    ///     - pathComponents: Collection of path componenets
    ///     - queryParameters Collection of query parameters
    
    public init(endpoint: RMEndpoint,
         pathComponents: [String] = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    
    static let listCharactersRequest = RMRequest(endpoint: RMEndpoint.character)
}
