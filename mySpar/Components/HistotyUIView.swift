//
//  HistotyUIView.swift
//  mySpar
//
//  Created by Enzhe Gaysina on 13.08.2023.
//

import SwiftUI

struct HistotyUIView: View {
    // Массив с именами изображений
    let imageNames = ["10", "12", "11", "9", "8", "7","6"]
    // Массив с названиями истории
    let titleNames = [
        "Привилегии \n'Мой Spar'",
        "Мы в \nсоцсетях",
        "100 000\n бонусов",
        "Chip\n Chop",
        "Новинки \n недели",
        "Рецепт \n недели",
        "Городецкая \n роспись"
    ]
    
    var body: some View {

        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 5) {
                ForEach(0..<imageNames.count) { index in
                    VStack {
                        // Верхний круг с изображением
                        ZStack {
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color.green)
                            
                            Image(imageNames[index])
                                .resizable()
                                .frame(width: 44, height: 44)
                                .foregroundColor(.white)
                                .cornerRadius(100)
                        }
                        // Текст под изображением
                        Text(titleNames[index])
                            .font(.caption)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                
            }.padding()
        }
    }
}

struct HistotyUIView_Previews: PreviewProvider {
    static var previews: some View {
        HistotyUIView()
    }
}
