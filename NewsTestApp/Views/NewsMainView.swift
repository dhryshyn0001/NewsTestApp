//
//  NewsMainView.swift
//  NewsTestApp
//
//  Created by _deniro0001_ on 15.04.2022.
//

import SwiftUI

struct NewsMainView: View {
    
    var articleData: ArticleData
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            VStack {
                NewsMainRow(sourceName: articleData.sourceName!, title: articleData.title!, desc: articleData.desc!, imgUrl: articleData.urlToImage!, time: articleData.time!)
            }
            .cornerRadius(13)
            .padding()
            .shadow(radius: 10)
            
            Spacer()
        }
        .padding(.top, 50)
        //.navigationBarTitle(articleData.title!)
        .navigationBarTitle("Latest News")
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsMainView(articleData: testArticleData)
    }
}
