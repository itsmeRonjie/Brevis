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
    
    let font: Font = Theme.font
    let secondaryFont: Font = Theme.secondaryFont
    let fontWeight: Font.Weight = Theme.fontWeight
    
    var charFound: Bool {
        searchQuery.count == 1 &&
        hotkeyModel.character.lowercased() == searchQuery.lowercased()
    }
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular &&
        verticalSizeClass == .regular
    }

    var body: some View {
        
        let layout = Theme.layout(isIPad: isIPad)
        layout {
            HStack {
                if charFound{
                    Text("🔵")
                        .font(font)
                }
                Text(hotkeyModel.description)
                    .font(font)
                    .fontWeight(.semibold)
            }
            .frame(width: Theme.hotkeyWidth, alignment: .leading)
            Text(hotkeyModel.text.capitalized)
                .foregroundStyle(.secondary)
                .font(secondaryFont)
        }
        .foregroundStyle(charFound ? .blue : Color("labelColor"))
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
