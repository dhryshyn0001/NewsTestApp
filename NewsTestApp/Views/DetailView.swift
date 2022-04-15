//
//  DetailView.swift
//  NewsTestApp
//
//  Created by _deniro0001_ on 15.04.2022.
//

import SwiftUI

struct DetailView: View {
    
    var articleData: ArticleData
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .onAppear {
                if articleData.url != nil {
                    DispatchQueue.main.async {
                        UIApplication.shared.open(articleData.url!) { (_) in
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                                self.mode.wrappedValue.dismiss()
                            })
                        }
                    }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(articleData: testArticleData)
    }
}
