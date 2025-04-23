//
//  HotkeyRowView.swift
//  Brevis
//
//  Created by Ronjie Diafante Man-on on 4/23/25.
//

import SwiftUI

struct HotkeyRowView: View {
    let hotkeyModel: HotkeyModel
    let searchQuery: String
    
    let font: Font = .body
    let secondaryFont: Font = .caption
    let fontWeight: Font.Weight = .regular
    
    var charFound: Bool {
        searchQuery.count == 1 &&
        hotkeyModel.character.lowercased() == searchQuery.lowercased()
    }
    
    
    var body: some View {
        VStack(alignment: .leading) { // TODO: for Mac and iPad
            HStack {
                if charFound{
                    Text("🔵")
                        .font(font)
                }
                Text(hotkeyModel.description)
                    .font(font)
                    .fontWeight(.semibold)
            }
            Text(hotkeyModel.text.capitalized)
                .foregroundStyle(.secondary)
                .font(secondaryFont)
        }
        .foregroundStyle(charFound ? .blue : .black)
    }
}

#Preview {
    VStack {
        HotkeyRowView(
            hotkeyModel: .init(
                modifiers: [.command],
                character: "b",
                text: "build"
            ),
            searchQuery: "b"
        )
        HotkeyRowView(
            hotkeyModel: .init(
                modifiers: [.command],
                character: "b",
                text: "build"
            ),
            searchQuery: "r"
        )
    }
}
