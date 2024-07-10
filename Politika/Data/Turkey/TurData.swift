//
//  PresidentsData.swift
//  Politika
//
//  Created by Kaan Tan Karabulut on 9.06.2024.
//

import Foundation

class TurData: ObservableObject {
    @Published var TurPoliticians: [Politician] = [
        turPres,
        turVicePres,
        turAgriForest,
        turTourism,
        turEnergy,
        turEnv,
        turFamSocial,
        turForeign,
        turHealth,
        turIndTech,
        turInt,
        turJustice,
        turLaborSocialSec,
        turDefense,
        turEdu,
        turTrade,
        turTraInf,
        turTreaFinImg,
        turSport,
        turBank
    ]
}
