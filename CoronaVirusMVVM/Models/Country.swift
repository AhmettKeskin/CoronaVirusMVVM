//
//  Country.swift
//  CoronaVirusMVVM
//
//  Created by Ali Emre Değirmenci on 2.04.2020.
//  Copyright © 2020 Ali Emre Degirmenci. All rights reserved.
//

import Foundation

struct Country: Decodable {

    let country: String?
    let countryInfo: CountryInfo?
    let cases: Int?
    let todayCases: Int?
    let deaths: Int?
    let todayDeaths: Int?
    let recovered: Int?
    let active: Int?
    let critical: Int?
    let casesPerOneMillion: Double?
    let deathsPerOneMillion: Double?
    let updated: Int?
}

struct CountryInfo: Decodable {
    let id: Int?
    let iso2: String?
    let iso3: String?
    let lat: Double?
    let long: Double?
    let flag: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case iso2
        case iso3
        case lat
        case long
        case flag
    }
}
