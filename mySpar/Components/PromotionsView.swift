//
//  PromotionsView.swift
//  mySpar
//
//  Created by Enzhe Gaysina on 13.08.2023.
//

import SwiftUI

struct PromotionsView: View {
    var body: some View {
        VStack {
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: 10) {
                    Image("16")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 400)
                        .cornerRadius(10)
                    
                    Image("17")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 490, height: 300)
                        .cornerRadius(10)
                }
                .padding(.vertical)
            }
            // Ограничиваем область скролла
            .contentShape(Rectangle())
            // Прокладываем отступ сверху и снизу от скролла
            .padding(.vertical, -100)
            
            // Вставляем вид ProductSliderOneView
            ProductSliderOneView()
        }
    }
}


struct PromotionsView_Previews: PreviewProvider {
    static var previews: some View {
        PromotionsView()
    }
}

