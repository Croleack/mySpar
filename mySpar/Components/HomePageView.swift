//
//  HomePageView.swift
//  mySpar
//
//  Created by Enzhe Gaysina on 13.08.2023.
//

import SwiftUI

struct HomePageView: View {

    @State private var location: String = ""
    
    var body: some View {
        
        HStack{
            HStack(spacing: 0) {
                Image("Лок")
                    .resizable()
                    .frame(width: 15, height: 25)
                    .padding(.trailing)
                
                TextField("Москва, Москва и Московская область", text: $location)
                    .font(.title3)
                    .foregroundColor(.black)
            }.padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(30)
                .padding()
            Button(action: {}) {
                Image(systemName: "list.dash")
                    .imageScale(.large)
                    .foregroundColor(.green)
                    .padding(.trailing)
            }
        }
    }
}
struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
