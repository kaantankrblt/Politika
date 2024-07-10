//
//  TurLaborSocialSec.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turLaborSocialSec = Politician(
    id: NSUUID().uuidString,
    name: "Vedat Işıkhân",
    title: "Minister of Labor & Social Security of Turkiye",
    biography: """
    Vedat Işıkhân is a Turkish politician and economist currently serving as the Minister of Trade. He has a background in economics and international trade policy, and has previously held various governmental roles related to trade and commerce. Işıkhân is known for his efforts in promoting Turkey's trade relations globally and fostering economic growth through trade initiatives.
    """,
    imageName: "TurLaborSocialSecImg",
    highlights: [
        ("calendar", "Date of Birth"),
        ("graduationcap", "Educational Background"),
        ("person.3.fill", "Political Party Affiliation"),
    ],
    country: "Turkey",
    bornYear: 1966
)
