//
//  TurPres.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turPres = Politician(
    id: NSUUID().uuidString,
    name: "Recep Tayyip Erdogan",
    title: "President of Turkiye",
    biography: """
    Recep Tayyip Erdoğan (born 26 February 1954, Istanbul) is a Turkish politician, the 12th and current president of the Republic of Turkey and the chairman of the Justice and Development Party. He previously served as the mayor of Istanbul metropolitan municipality between 1994 and 1998 and as the prime minister of Turkey between 2003 and 2014. He became president for the first time by direct popular vote in 2014, after the referendum electing the president by the people. He was elected president for the second time in 2018 and the last time for the third time in 2023.
    """,
    imageName: "TurPres",
    highlights: [
        ("calendar", "1954"),
        ("graduationcap", "Marmara University / Economy / 1981"),
        ("person.3.fill", "Justice and Development Party / 2001"),
    ],
    country: "Turkey",
    bornYear: 1954
)
