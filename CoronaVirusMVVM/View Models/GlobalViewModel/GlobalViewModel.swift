//
//  GlobalViewModel.swift
//  CoronaVirusMVVM
//
//  Created by Ali Emre Değirmenci on 3.04.2020.
//  Copyright © 2020 Ali Emre Degirmenci. All rights reserved.
//

import Foundation

struct GlobalViewModel {
     let globalInfo: Global

    func getAllCases() -> GlobalViewModel {
        return GlobalViewModel(globalInfo: globalInfo)
    }
}

extension GlobalViewModel {

    var active: Int {
        return globalInfo.active ?? 0
    }

    var affectedCountries: Int {
        return globalInfo.affectedCountries ?? 0
    }

    var cases: Int {
        return globalInfo.cases ?? 0
    }

    var deaths: Int {
        return globalInfo.deaths ?? 0
    }

    var recovered: Int {
        return globalInfo.recovered ?? 0
    }

    var updated: Int {
        return globalInfo.updated ?? 0
    }
}
