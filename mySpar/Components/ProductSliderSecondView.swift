//
//  ProductSliderSecondView.swift
//  mySpar
//
//  Created by Enzhe Gaysina on 13.08.2023.
//

import SwiftUI

struct ProductSliderSecondView: View {
    //список наших изображений по которому мы будем скользить
    var sliders: [String] = ["7","8","9","6"]
    var prices: [String] = [
        "259.99  ₽/100г",
        "119.99 ₽/100г",
        "59  ₽/шт.",
        "79 ₽/шт. "
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Заголовок блока
            Text("Шашлыки на Ура")
                .font(.title2)
                .bold()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing:5) {
                    
                    ForEach(0..<sliders.count) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200, height: 200)
                            .foregroundColor(Color.white)
                            .overlay(makeProductSliderSecond(index))
                    }
                }
            }
        }
    }
    
    func makeProductSliderSecond (_ index: Int) -> AnyView {
        AnyView(
            VStack {
                // Изображение товара
                Image(sliders[index])
                    .resizable()
                    .frame(width: 100,height: 120)
                    .scaledToFit()
                    .cornerRadius(15)
                HStack(spacing: 20) {
                    // Цена товара
                    Text(prices[index])
                        .foregroundColor(.black)
                        .font(.headline)
                    // Кнопка корзины
                    Button(action: {}) {
                        ZStack{
                            Circle()
                                .fill(Color.green)
                                .frame(width: 35, height: 35)
                            Image(systemName: "basket")
                        }
                    }
                }
            }
        )
    }
}

struct ProductSliderSecondView_Previews: PreviewProvider {
    static var previews: some View {
        ProductSliderSecondView()
    }
}



