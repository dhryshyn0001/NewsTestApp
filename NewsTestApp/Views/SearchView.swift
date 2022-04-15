//
//  SearchView.swift
//  NewsTestApp
//
//  Created by _deniro0001_ on 13.04.2022.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack {
            TextField("Search", text: $searchText)
                .padding()
                .frame(height: 50)
                //.background(Color.gray)
        }
    }
}
