//
//  HotKeyCategoryModel.swift
//  Brevis
//
//  Created by Ronjie Diafante Man-on on 4/23/25.
//

import Foundation

struct HotKeyCategoryModel: Identifiable {
    let id = UUID()
    
    let name: String
    let models: [HotKeyModel]
}
