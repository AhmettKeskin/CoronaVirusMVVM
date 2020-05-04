//
//  News.swift
//  CoronaVirusMVVM
//
//  Created by Ali Emre Değirmenci on 10.04.2020.
//  Copyright © 2020 Ali Emre Degirmenci. All rights reserved.
//

import Foundation

struct NewsResponse: Codable {
    let status: String
    let totalResults: Int
    var news: [News]
}

// MARK: - Article
struct News: Codable, Hashable {

    let source: Source?
    let author, title, description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?

    enum CodingKeys: String, CodingKey {
        case source, author, title
        case description
        case url, urlToImage, publishedAt, content
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }

    static func == (lhs: News, rhs: News) -> Bool {
        return lhs.title == rhs.title && lhs.source?.name == rhs.source?.name
    }
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String?
}
