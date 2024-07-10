//
//  ExploreView.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 9.06.2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    @StateObject private var politicianData = TurData()
    @State private var selectedPresident: Politician? = nil

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(politicianData.TurPoliticians.filter {
                        searchText.isEmpty || $0.name.localizedCaseInsensitiveContains(searchText)
                    }) { president in
                        Button(action: {
                            selectedPresident = president
                        }) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(president.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 64, height: 64)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 8, style: .continuous) }
                                        .padding(.trailing)
                                    VStack(alignment: .leading) {
                                        Text(president.name)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(.black)
                                        Text(president.title)
                                            .fontWeight(.medium)
                                            .foregroundStyle(.gray)
                                    }
                                    .font(.footnote)
                                    Spacer()
                                }
                                Divider()
                            }
                            .padding(.leading)
                        }
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
            .sheet(item: $selectedPresident) { politician in
                PoliticianView(politician: politician)
            }
        }
    }
}

#Preview {
    ExploreView()
}
