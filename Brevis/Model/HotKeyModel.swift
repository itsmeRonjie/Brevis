//
//  HotKeyModel.swift
//  Brevis
//
//  Created by Ronjie Diafante Man-on on 4/23/25.
//

import Foundation

struct HotKeyModel: Identifiable {
    let id = UUID()
    
    let modifiers: [Modifier]
    let character: String
    let text: String
    
    var description: String {
        "Description - TODO \(modifiers) \(character.capitalized) "
    }
}
