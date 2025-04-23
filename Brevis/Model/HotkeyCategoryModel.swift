//
//  HotKeyCategoryModel.swift
//  Brevis
//
//  Created by Ronjie Diafante Man-on on 4/23/25.
//

import Foundation

struct HotkeyCategoryModel: Identifiable {
    let id = UUID()
    
    let name: String
    let models: [HotkeyModel]
}
