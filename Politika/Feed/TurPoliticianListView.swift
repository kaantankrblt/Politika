//
//  PresidentListView.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 9.06.2024.
//

import SwiftUI

struct TurPoliticianListView: View {
    @StateObject private var TurPoliticiansData = TurData()
    @State private var selectedPolitician: Politician? = nil

    private var shuffledPresidents: [Politician] {
        TurPoliticiansData.TurPoliticians.shuffled()
    }

    func fetchPresidents() async throws -> [Politician] {
        try await Task.sleep(nanoseconds: 1_000_000_000)
        return TurPoliticiansData.TurPoliticians.shuffled()
    }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 8) {
                    ForEach(shuffledPresidents) { politician in
                        Button(action: {
                            selectedPolitician = politician
                            uploadPoliticianToFirestore(politician: politician)

                        }) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Image(politician.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 64, height: 64)
                                        .clipped()
                                        .mask { RoundedRectangle(cornerRadius: 8, style: .continuous) }
                                        .padding(.trailing)
                                    VStack(alignment: .leading) {
                                        Text(politician.name)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(.black)
                                        Text(politician.title)
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.leading)
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
            .refreshable {
                do {
                    TurPoliticiansData.TurPoliticians = try await fetchPresidents()
                } catch {
                    print("Error fetching presidents: \(error)")
                }
            }
            .navigationTitle("Turkey Politicians")
            .sheet(item: $selectedPolitician) { politician in
                PoliticianView(politician: politician)
            }
        }
    }
}

#Preview {
    TurPoliticianListView()
}
