//
//  TurEdu.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 8.07.2024.
//

import Foundation

let turEdu = Politician(
    id: NSUUID().uuidString,
    name: "Yusuf Tekin",
    title: "Minister of National Education of Turkiye",
    biography: """
    Yusuf Tekin is a Turkish politician and educator currently serving as the Minister of National Education. With a background in education policy and management, he has been actively involved in reforming and improving the national education system. Tekin has held various governmental roles focusing on educational policies and initiatives.
    """,
    imageName: "TurEduImg",
    highlights: [
        ("calendar", "Date of Birth"),
        ("graduationcap", "Educational Background"),
        ("person.3.fill", "Justice and Development Party"),
    ],
    country: "Turkey",
    bornYear: 1970
)
