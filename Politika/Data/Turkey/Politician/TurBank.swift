//
//  TurBank.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 9.07.2024.
//

import Foundation

let turBank = Politician(
    id: NSUUID().uuidString,
    name: "Fatih Karahan",
    title: "Governor of the Central Bank of Turkey",
    biography: """
    Fatih Karahan (born 2 February 1972, Istanbul) is a Turkish economist and central banker. He has a distinguished career in economic research and policy, having held various academic and governmental positions. Karahan is known for his expertise in monetary policy and financial stability. He became the Governor of the Central Bank of Turkey in 2023.
    """,
    imageName: "TurBankImg",
    highlights: [
        ("calendar", "1972"),
        ("graduationcap", "Boğaziçi University / Economics / 1994"),
        ("briefcase.fill", "Central Bank of Turkey / 2023"),
    ],
    country: "Turkey",
    bornYear: 1972
)
