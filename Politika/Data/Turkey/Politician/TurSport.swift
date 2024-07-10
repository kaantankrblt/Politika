//
//  TurSport.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 9.07.2024.
//

import Foundation

let turSport = Politician(
    id: NSUUID().uuidString,
    name: "Osman Aşkın Bak",
    title: "Minister of Youth and Sports of Turkey",
    biography: """
    Osman Aşkın Bak (born 11 October 1966, Istanbul) is a Turkish politician who has served in various governmental roles. He has been a Member of Parliament since 2011 and has held positions such as the Chairperson of the Turkish Grand National Assembly's Youth and Sports Committee. Bak is known for his contributions to sports policies and youth development initiatives. He became Minister of Youth and Sports in 2023.
    """,
    imageName: "TurSportImg",
    highlights: [
        ("calendar", "1966"),
        ("graduationcap", "Istanbul Technical University / Mechanical Engineering / 1988"),
        ("person.3.fill", "Justice and Development Party / 2001"),
    ],
    country: "Turkey",
    bornYear: 1966
)
