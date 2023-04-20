//
//  NetworkService.swift
//  War
//
//  Created by Jack Dellamea on 4/20/23.
//

import Foundation

struct NetworkService {
    
    // MARK: Functions
    
    static func fetch() async Card? {
        
        // 1. Attempt to create a URL from address provided
        let endpoint = "https://deckofcardsapi.com/api/deck/new/draw/?count=1"
        guard let url = URL(string: endpoint) else {
            print("Invalid address for JSON endpoint.")
            return nil
        }
        
        do {
            
        // Fetch the data
        let (data, _) = try await URLSession.shared.data(from: url)
        
        // 3. Decode the data
        
        // Create a decoder object to do most of the work for us
        let decoder = JSONDecoder()
        
        // Use the decoder object to convert the raw data into an instance of our Swift data type
        let decodedData = try decoder.decode(Joke.self, from: data)

        // If we got here, decoding succeeded, return the instance of our data type
        return decodedData
        
    } catch {
        
        // Show an error that we wrote and understand
        print("Count not retrieve data from endpoint, or could not decode into an instance of a Swift data type.")
        print("----")
        
        // Show the detailed error to help with debugging
        print(error.localizedDescription)
        return nil
        
        }
    }
}
