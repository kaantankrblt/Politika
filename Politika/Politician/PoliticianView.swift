//
//  PresidentView.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 9.06.2024.
//

import SwiftUI

struct PoliticianView: View {
    let politician: Politician

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(politician.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 320)
                    .clipped()
                    .mask { RoundedRectangle(cornerRadius: 34, style: .continuous) }
                    .padding()

                Text(politician.name)
                    .font(.system(size: 29, weight: .semibold, design: .default))
                    .padding(.leading)

                Text(politician.title)
                    .font(.system(.callout, weight: .medium))
                    .padding(.leading)

                Text(politician.biography)
                    .font(.system(.callout).width(.condensed))
                    .padding([.top, .leading, .trailing])

                Divider()

                VStack(alignment: .leading, spacing: 16) {
                    Text("HIGHLIGHTS")
                        .kerning(2.0)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundStyle(.secondary)

                    ForEach(politician.highlights, id: \.icon) { highlight in
                        HStack {
                            Image(systemName: highlight.icon)
                                .symbolRenderingMode(.hierarchical)
                            Text(highlight.text)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    PoliticianView(politician: turPres)
}
