//
//  SearchView.swift
//  PlayboiFashion
//
//  Created by Playboi In Central on 3/5/25.
//

import SwiftUI

struct SearchView: View {
    @State var txtSearch: String = ""
    var body: some View {
        VStack {
            TextField("Type something...", text: $txtSearch)
                .frame(width: 230)
                .padding(.horizontal)
                .padding(.vertical, 7)
                .background(
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.gray.opacity(0.5))
                )
                .overlay(alignment: .trailing) {
                    ZStack {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(.red)
                            .opacity(txtSearch.isEmpty ? 0.0 : 1.0)
                            .onTapGesture {
                                txtSearch = ""
                            }
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.black)
                            .opacity(txtSearch.isEmpty ? 1.0 : 0.0)
                            .padding(.horizontal)
                    }
                }
//            ScrollView(.vertical) {
//                VStack {
//                    ForEach(filteredMovies) { index in
//                        MovieSearchCard(movie: index)
//                    }
//                }
//            }
//            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
