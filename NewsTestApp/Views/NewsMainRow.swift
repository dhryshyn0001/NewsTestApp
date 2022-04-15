//
//  NewsDetailRow.swift
//  NewsTestApp
//
//  Created by _deniro0001_ on 15.04.2022.
//

import SwiftUI

struct NewsMainRow: View {
    
    var sourceName: String = "SourceName"
    var title: String = "Title"
    var desc: String = "Desc"
    var imgUrl = URL(string: "https://www.google.com")
    var time = "12:45"
    
    var body: some View {
        
        VStack {
            
            if imgUrl != nil {
                AsyncImage(
                    url: (imgUrl!),
                    placeholder: { Text("Loading ...") },
                    image: {
                        Image(uiImage: $0)
                        .resizable()
                    }
                )
                .frame(height: 100)
                .padding(.bottom)
            }
            
            VStack {
                
                HStack {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                        .padding(.top)
                    
                    Text(self.title)
                        .lineLimit(1)
                        .font(.headline)
                        .padding(.top)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text(getTime(input: self.time))
                        .lineLimit(1)
                        .font(.subheadline)
                        .padding(.top)
                        .foregroundColor(.gray)
                }
                    
                VStack(alignment: .leading) {
                    Text(self.sourceName)
                        .lineLimit(1)
                        .font(Font.callout.bold())
                        .padding(.top, 3)
                        .padding(.leading)
                        .foregroundColor(.black)
                    
                    if desc != "" {
                        Text(self.desc)
                            .lineLimit(1)
                            .font(.subheadline)
                            .padding(.top, 3)
                            .padding(.leading)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.leading)
            }
            
            //Divider()
        }
//        .padding(.leading)
//        .padding(.trailing)
    }
}

struct NewsDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        NewsMainRow()
    }
}
