//
//  MainViewViewModel.swift
//  NewsTestApp
//
//  Created by _deniro0001_ on 13.04.2022.
//


import Foundation
import Alamofire
import SwiftyJSON

class MainViewViewModel: ObservableObject {
    
    @Published var allArticles: [ArticleData] = []
    
//    let headers: HTTPHeaders = [
//        "apiKey": "cac22a4c922841cdbd591caf11dd053e"
//    ]
    
    init() {
        
        getAllArticles()
    }
    
    func getAllArticles() {
        
        AF.request("https://newsapi.org/v2/top-headlines?country=ua&apiKey=cac22a4c922841cdbd591caf11dd053e").responseJSON { response in
            
            let result = response.value
            
            var allArticles: [ArticleData] = []
            var articleObject = ArticleData()
            
            if result != nil {
                
                let json = JSON(result!)
                print(json)
                
                let articles = json["articles"].arrayValue
                
                for article in articles {
                    if let sourceName = article["source"]["name"].string {
                        articleObject.sourceName = sourceName
                        print("\(sourceName)!!!!!!!!!!!!!!!!!!")
                    }
                    
                    if let title = article["title"].string {
                        articleObject.title = title
                    }
                    
                    if let desc = article["description"].string {
                        articleObject.desc = desc
                    }
                    
                    if let url = article["url"].url {
                        articleObject.url = url
                    } else {
                        articleObject.url = testArticleData.url
                    }
                    
                    if let urlToImage = article["urlToImage"].url {
                        articleObject.urlToImage = urlToImage
                    }
                    
                    if let publishedAt = article["publishedAt"].string {
                        articleObject.time = publishedAt
                    }
                    
                    allArticles.append(articleObject)
                }
                
                self.allArticles = allArticles
            }
        }
    }
}
