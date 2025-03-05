//
//  Banner.swift
//  PlayboiFashion
//
//  Created by Playboi In Central on 3/5/25.
//

import SwiftUI

struct Banner: View {
    let bannerImg: [String] = ["converseshop","urbanrevivoshop"]
    var body: some View {
            TabView {
                    NavigationLink {
                        ConverseShop()
                    } label: {
                        Image(bannerImg[0])
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                                                .clipped()
                    }
                    NavigationLink {
                        UrbanrevivoShop()
                    } label: {
                        Image(bannerImg[1])
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                                                .clipped()
                    }
                
            }
            .tabViewStyle(PageTabViewStyle())
                .frame(height: 190)
            }
}

#Preview {
    ContentView()
}
