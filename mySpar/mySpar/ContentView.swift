//
//  ContentView.swift
//  mySpar
//
//  Created by Enzhe Gaysina on 13.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {

                HomePageView()
                ScrollView(.vertical) {
                    VStack(spacing: 10) {

                        HistotyUIView()
                        PromotionsView()
                        ProductSliderSecondView()
                    }
                }

                TabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
