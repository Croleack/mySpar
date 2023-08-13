//
//  ProductSliderOneView.swift
//  mySpar
//
//  Created by Enzhe Gaysina on 13.08.2023.
//

import SwiftUI

struct ProductSliderOneView: View {
    //список наших изображений по которому мы будем скользить
     var sliders: [String] = ["1","2","3","4","5","6"]
     var prices: [String] = ["259.99  ₽/100г", "119.99 ₽/100г", "549  ₽/шт.","79 ₽/шт. ","69.99  ₽/шт", "119.99 ₽/шт"]
    
     var body: some View {
         //aligment - выравнивание   вначал наше изображение сверху ползунок
         VStack(alignment: .leading, spacing: 0) {
             Text("Рекомендуем")
                 .font(.title2)
                 .bold()
             ScrollView(.horizontal, showsIndicators: false) {
                 HStack(spacing:5) {
                     
                     ForEach(0..<sliders.count) { index in
                         RoundedRectangle(cornerRadius: 10)
                             .frame(width: 200, height: 200)
                             .foregroundColor(Color.white)
                             .overlay(
                                 VStack {
                                     Image(sliders[index])
                                         .resizable()
                                         .frame(width: 100,height: 120)
                                     //масштабируем нашу картинку
                                         .scaledToFit()
                                         .cornerRadius(15)
                                     HStack(spacing: 20) {
                                         Text(prices[index])
                                             .foregroundColor(.black) // Цвет текста
                                             .font(.headline) // Размер и стиль шрифта
                                         ZStack{
                                             Circle()
                                                     .fill(Color.green)
                                                     .frame(width: 35, height: 35)
                                             Image(systemName: "basket")
                                         }
                                         
                                     }})}
             }
             }
             }
         }
     }


struct ProductSliderOneView_Previews: PreviewProvider {
    static var previews: some View {
        ProductSliderOneView()
    }
}
