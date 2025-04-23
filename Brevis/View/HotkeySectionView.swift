//
//  HotkeySectionView.swift
//  Brevis
//
//  Created by Ronjie Diafante Man-on on 4/23/25.
//

import SwiftUI

struct HotkeySectionView: View {
    let categoryName: String
    let hotkeyModels: [HotkeyModel]
    let searchQuery: String
    let sectionHeaderFont: Font = .headline
    let sectionHeaderFontWeight: Font.Weight = .semibold
    let sectionHeaderColor: Color = .red
    
    var filteredHotkeyModels: [HotkeyModel] {
        if searchQuery.count <= 1 {
            return hotkeyModels
        }
        return hotkeyModels.filter {
            $0.text.lowercased().contains(searchQuery.lowercased())
        }
        
    }
    
    var body: some View {
        if !filteredHotkeyModels.isEmpty {
            Section {
                ForEach(filteredHotkeyModels) { hotkeyModel in
                    HotkeyRowView(
                        hotkeyModel: hotkeyModel,
                        searchQuery: searchQuery
                    )
                }
            } header: {
                Text(categoryName)
                    .font(sectionHeaderFont)
                    .fontWeight(sectionHeaderFontWeight)
                    .foregroundStyle(sectionHeaderColor)
            }
        }
    }
}

#Preview {
    Form {
        HotkeySectionView(
            categoryName: "Product",
            hotkeyModels: [
                .init(
                    modifiers: [.command],
                    character: "b",
                    text: "Build"
                ),
                .init(
                    modifiers: [.command],
                    character: "r",
                    text: "Run"
                )
            ],
            searchQuery: ""
        )
    }
}
