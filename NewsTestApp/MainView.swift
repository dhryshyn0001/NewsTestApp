//
//  MainView.swift
//  NewsTestApp
//
//  Created by _deniro0001_ on 13.04.2022.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewModel = MainViewViewModel()
    
    @State var searchText = ""
    @State var isSearchVisible = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                if isSearchVisible {
                    SearchView(searchText: $searchText)
                }
                
                List {
                    
                    ForEach(viewModel.allArticles.filter {
                        self.searchText.isEmpty ? true : $0.title!.lowercased().contains(self.searchText.lowercased())
                    }, id: \.title) { articleData in
                        
                        NavigationLink(
                            destination: DetailView(articleData: articleData),
                            label: {

                                NewsMainView(articleData: articleData)
                            })
                    }
                }
                
            }// end of VStack
            .navigationBarTitle(Text("Latest News"), displayMode: .inline)
            .navigationBarItems(trailing:
                                    
                                    Button(action: {
                                        
                                        self.isSearchVisible.toggle()
                                        
                                        if !self.isSearchVisible {
                                            self.searchText = ""
                                        }
                                        
                                    }, label: {
                                        Image(systemName: "magnifyingglass")
                                    })
                                
            )
        } // end of Navigation View
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
