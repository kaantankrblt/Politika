//
//  TurIndTech.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turIndTech = Politician(
    id: NSUUID().uuidString,
    name: "Mehmet Fatih Kacır",
    title: "Minister of Industry and Technology of Turkiye",
    biography: """
    Mehmet Fatih Kacır (born 10 March 1984) is a Turkish politician and engineer who has been serving as the Minister of Industry and Technology. With a background in engineering and technology management, he has been actively involved in shaping Turkey's industrial and technological policies. Kacır was appointed as Minister of Industry and Technology in 2023.
    """,
    imageName: "TurIndTechImg",
    highlights: [
        ("calendar", "1984"),
        ("graduationcap", "Boğaziçi University / Industrial Engineering / 2006"),
        ("person.3.fill", "Justice and Development Party / 2023"),
    ],
    country: "Turkey",
    bornYear: 1984
)
