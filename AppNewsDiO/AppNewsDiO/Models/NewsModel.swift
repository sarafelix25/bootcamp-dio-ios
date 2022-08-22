//
//  NewsModel.swift
//  AppNewsDiO
//
//  Created by Sara Batista dos Santos Felix on 8/9/22.
//

import UIKit

struct NewsModel: Codable {
    var source: SourceModel
    var author: String?
    var title: String
    var description: String?
    var url: String
    var urlToImage: String?
    var publishedAt: Date
    var content: String?
}
