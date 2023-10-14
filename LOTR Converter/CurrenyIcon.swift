//
//  CurrenyIcon.swift
//  LOTR Converter
//
//  Created by Cristóbal Contreras on 14-10-23.
//

import SwiftUI

struct CurrenyIcon: View {
    @State var currencyImage: String
    @State var currencyText: String
    
    var body: some View {
        ZStack {
            // currency image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            // currency text
            VStack {
                Spacer()
                Text(currencyText)
                    .padding(3)
                    .font(.caption)
                    .background(.brown.opacity(0.75))
            }
        }
        .padding(3)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(.brown)
        .cornerRadius(25)
    }
}

#Preview {
    CurrenyIcon(
        currencyImage: "goldpenny", currencyText: "Gold Penny"
    )
        .previewLayout(.sizeThatFits)
}
