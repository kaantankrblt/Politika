//
//  TurTrade.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turTrade = Politician(
    id: NSUUID().uuidString,
    name: "Ömer Bolat",
    title: "Minister of Trade of Turkiye",
    biography: """
    Ömer Bolat is a Turkish politician and economist currently serving as the Minister of Trade. With a background in economics and trade policy, he has been actively involved in promoting international trade relations and economic growth through trade initiatives. Bolat has held various governmental roles focusing on trade and commerce.
    """,
    imageName: "TurTradeImg",
    highlights: [
        ("calendar", "Date of Birth"),
        ("graduationcap", "Educational Background"),
        ("person.3.fill", "Justice and Development Party"),
    ],
    country: "Turkey",
    bornYear: 1963
)
