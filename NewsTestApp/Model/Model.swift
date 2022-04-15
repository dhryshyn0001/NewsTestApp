//
//  Model.swift
//  NewsTestApp
//
//  Created by _deniro0001_ on 15.04.2022.
//

import Foundation

struct ArticleData {
    
    var sourceName: String?
    var title: String?
    var desc: String?
    var url: URL?
    var urlToImage: URL?
    var time: String?
}

let testArticleData = ArticleData(sourceName: "Source Name", title: "Title", desc: "Description", url: URL(string: "https://www.google.com")!, urlToImage: nil, time: "12:45")
