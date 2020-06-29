//
//  articlesModels.swift
//  viperDemo
//
//  Created by A on 6/28/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import Foundation
// MARK: - UserElement
struct articlesModels: Codable {
    let title, website, authors, date: String
    let content: String
    let tags: [Tag]
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case title, website, authors, date, content, tags
        case imageURL = "image_url"
    }
}

// MARK: - Tag
struct Tag: Codable {
    let id: Int
    let label: String
}

typealias User = [articlesModels]
