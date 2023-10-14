//
//  IconGrid.swift
//  LOTR Converter
//
//  Created by Cristóbal Contreras on 14-10-23.
//

import SwiftUI

struct IconGrid: View {
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @Binding var currency: Currency
    
    var body: some View {
        LazyVGrid(columns: gridLayout) {
            ForEach(0..<5) { i in
                if Currency.allCases[i] == currency {
                    CurrenyIcon(
                        currencyImage: CurrencyImage.allCases[i].rawValue,
                        currencyText: CurrencyText.allCases[i].rawValue
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: (25))
                            .stroke(lineWidth: 3)
                            .opacity(0.5)
                    )
                    .shadow(color: .black, radius: 9)
                } else {
                    CurrenyIcon(
                        currencyImage: CurrencyImage.allCases[i].rawValue,
                        currencyText: CurrencyText.allCases[i].rawValue
                    )
                    .onTapGesture {
                        print(CurrencyText.allCases[i].rawValue)
                        currency = Currency.allCases[i]
                    }
                }
            }
        }
        .padding([.bottom, .leading, .trailing])
    }
}

#Preview {
    IconGrid(
        currency: .constant(.silverPiece)
    )
}
