//
//  CoronaVirusMVVMTests.swift
//  CoronaVirusMVVMTests
//
//  Created by Ali Emre Değirmenci on 28.04.2020.
//  Copyright © 2020 Ali Emre Degirmenci. All rights reserved.
//

import XCTest
@testable import CoronaVirusMVVM

class CoronaVirusMVVMTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCountryViewModel() {
        let countryInfo = CountryInfo.
        do {
            let countryInfo = try Country(country: "Turkey", countryInfo: "Deaths", cases: 4900, todayCases: 350, deaths: 3000, todayDeaths: 200, recovered: 500, active: 1200, critical: 200, casesPerOneMillion: <#T##Double?#>, deathsPerOneMillion: <#T##Double?#>, updated: <#T##Int?#>)
            let countryViewModel = CountryViewModel(countryInfo: <#T##Country#>)
        } catch {
            print("Testing Error!")
        }
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
