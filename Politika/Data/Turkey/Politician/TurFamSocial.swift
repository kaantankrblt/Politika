//
//  TurFamSocial.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turFamSocial = Politician(
    id: NSUUID().uuidString,
    name: "Mahinur Özdemir Göktaş",
    title: "Minister of Family and Social Services of Turkiye",
    biography: """
    Mahinur Özdemir Göktaş (born 7 November 1982) is a Turkish politician who has been serving as the Minister of Family and Social Services. With a background in sociology and political science, she has been actively involved in social policy and family services. Göktaş was appointed as Minister of Family and Social Services in 2023.
    """,
    imageName: "TurFamSocialImg",
    highlights: [
        ("calendar", "1982"),
        ("graduationcap", "Université Libre de Bruxelles / Political Science / 2005"),
        ("person.3.fill", "Justice and Development Party / 2023"),
    ],
    country: "Turkey",
    bornYear: 1982
)
