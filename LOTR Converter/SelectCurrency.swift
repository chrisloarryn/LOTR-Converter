//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Cristóbal Contreras on 14-10-23.
//

import SwiftUI

struct SelectCurrency: View {
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            // background parchment image
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(.brown)
            
            VStack {
                // text
                Text("Select the currency you are starting with:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                // currency icons
                IconGrid(currency: $leftCurrency)
                
                // text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // currency icons
                IconGrid(currency: $rightCurrency)
                
                // done button
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding(10)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(15)
            }
        }
    }
}

#Preview {
    SelectCurrency(
        leftCurrency: .constant(.silverPiece),
        rightCurrency: .constant(.goldPiece)
    )
}
