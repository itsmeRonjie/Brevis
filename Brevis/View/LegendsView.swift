//
//  LegendsView.swift
//  Brevis
//
//  Created by Ronjie Diafante Man-on on 4/23/25.
//

import SwiftUI

struct LegendsView: View {
    var body: some View {
        let middleIndex = Modifier.allCases.count / 2 + 1
        
        HStack(alignment: .top) {
            LegendsViewColumn(
                lowerIndex: 0,
                upperIndex: middleIndex
            )
            LegendsViewColumn(
                lowerIndex: middleIndex,
                upperIndex: Modifier.allCases.count
            )
        }
    }
}

struct LegendsViewColumn: View {
    let lowerIndex: Int
    let upperIndex: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(lowerIndex..<upperIndex, id: \.self) { i in
                LegendsKeyValueRow(
                    modifier: Modifier.allCases[i]
                )
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct LegendsKeyValueRow: View {
    let modifier: Modifier
    
    let modifierFont: Font = .body
    
    
    var body: some View {
        Text("\(modifier.rawValue) = \(modifier.description)")
            .font(modifierFont)
    }
}

#Preview {
    LegendsView()
}
