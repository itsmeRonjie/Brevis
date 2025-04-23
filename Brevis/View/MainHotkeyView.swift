//
//  ContentView.swift
//  Brevis
//
//  Created by Ronjie Diafante Man-on on 4/23/25.
//

import SwiftUI

struct MainHotkeyView: View {
    @State private var searchQuery: String = ""
    var vm: HotkeyCategoryViewModel = HotkeyCategoryViewModel()
    
    
    var body: some View {
        NavigationStack {
            Form {
                List(vm.hotkeyCategoryModels) { hotkeyCategory in
                    HotkeySectionView(
                        categoryName: hotkeyCategory.name,
                        hotkeyModels: hotkeyCategory.models,
                        searchQuery: searchQuery
                    )
                }
            }
            .navigationTitle("Xcode Hotkeys")
            .searchable(text: $searchQuery, prompt: "Search...")
            LegendsView()
        }
    }
}

#Preview {
    MainHotkeyView()
}
