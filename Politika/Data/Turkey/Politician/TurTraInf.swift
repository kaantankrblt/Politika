//
//  TurTraInf.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turTraInf = Politician(
    id: NSUUID().uuidString,
    name: "Abdulkadir Uraloğlu",
    title: "Minister of Transport & Infrastructure of Turkiye",
    biography: """
    Abdulkadir Uraloğlu is a Turkish politician and engineer currently serving as the Minister of Transport & Infrastructure. With a background in civil engineering and infrastructure development, he has been actively involved in improving transportation networks and infrastructure projects in Turkey. Uraloğlu has held various governmental roles focusing on transport and infrastructure policies.
    """,
    imageName: "TurTraInfImg",
    highlights: [
        ("calendar", "Date of Birth"),
        ("graduationcap", "Educational Background"),
        ("person.3.fill", "Justice and Development Party"),
    ],
    country: "Turkey",
    bornYear: 1966
)
