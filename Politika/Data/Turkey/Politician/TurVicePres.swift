//
//  TurVicePres.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turVicePres = Politician(
    id: NSUUID().uuidString,
    name: "Cevdet Yılmaz",
    title: "Vice President of Turkiye",
    biography: """
    Cevdet Yılmaz (born 1 April 1967, Bingöl) is a Turkish politician who has served in various governmental roles. He has been a Member of Parliament since 2007 and has held positions such as Minister of Development and Minister of State. Yılmaz is known for his work in economic policy and development planning. He became Vice President of Turkey in 2023.
    """,
    imageName: "TurVicePresImg",
    highlights: [
        ("calendar", "1967"),
        ("graduationcap", "Middle East Technical University / Public Administration / 1988"),
        ("person.3.fill", "Justice and Development Party / 2001"),
    ],
    country: "Turkey",
    bornYear: 1967
)
