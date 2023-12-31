//
//  TabView.swift
//  mySpar
//
//  Created by Enzhe Gaysina on 13.08.2023.
//
import SwiftUI

struct TabView: View {
    @State private var selectedTab: Int = 0

    var tabNames = ["Главная", "Каталог", "Корзина", "Профиль"]

    var body: some View {
        VStack(spacing: 0) {
            // Тонкая линия сверху
            Divider()

            HStack(spacing: 20) {
                ForEach(0..<4) { index in
                    Button(action: {
                        selectedTab = index
                    }) {
                        VStack {
                            //иконка секции
                            Image(tabNames[index])
                                .resizable()
                                .frame(width: 30, height: 30)
                                .background(selectedTab == index ? Color("kSecondary") : Color.white)
                                .cornerRadius(Constants.tabCornerRadius)
                                .padding(.horizontal, 20)
                            //текст секции
                            Text(tabNames[index])
                                .padding(.top, 2) // Расстояние между изображением и текстом
                                .foregroundColor(Color.black)
                                .font(.system(size: 14))
                                .background(selectedTab == index ? Color("kSecondary") : Color.white)
                        }
                    }
                }
            }
            .foregroundColor(.blue)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0)
            .background(Color.white)
            // Тонкая линия снизу
            Divider()
        }
        // Задний фон TabView
        .background(Color.white)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}

extension TabView {
    enum Constants {
        static let tabCornerRadius: CGFloat = 8
    }
}
