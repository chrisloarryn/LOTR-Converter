//
//  ExchangeRate.swift
//  LOTR Converter
//
//  Created by Cristóbal Contreras on 12-10-23.
//

import SwiftUI

struct ExchangeRate: View {
    @State var leftImage: String
    @State var text: String
    @State var rightImage: String
    
    var body: some View {
        HStack {
            // left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // exchange rate text
            Text(text)
            
            // right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(
        leftImage: "goldpiece",
        text: "1 Gold Piece = 4 Gold Pennies",
        rightImage: "goldpenny")
}
