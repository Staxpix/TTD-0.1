//
//  NewsListOnline.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 13.04.21.
//

import SwiftUI

struct NewsListOnline: View {
    
    @State var newsOnline: [NewsOnline] = []
    
   
    
    var body: some View {
        
     
        
        VStack {
            List(newsOnline) { newsOnline in
                Text(newsOnline.headline)
            }.onAppear {
                apiCall().getNewsOnline { (newsOnline) in
                    self.newsOnline = newsOnline
                }
            }
        }
    }
}

struct NewsListOnline_Previews: PreviewProvider {
    static var previews: some View {
        NewsListOnline()
    }
}
