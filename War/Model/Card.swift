//
//  Card.swift
//  War
//
//  Created by Jack Dellamea on 4/20/23.
//

import Blackbird
import Foundation

struct Card: Identifiable, Codable, BlackbirdModel {
    @BlackbirdColumn var success: Bool
    @BlackbirdColumn var deck_id: String
   // @BlackbirdColumn var cards:
   // @BlackbirdColumn var images: 
}

//let exampleCard = Card(type: "general",
//                       setup: "How much doeas a hipster weigh?",
//                       punchline: "An instagram.",
//                       id: 146)

