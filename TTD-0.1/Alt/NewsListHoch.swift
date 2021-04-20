//
//  NewsListHoch.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 13.04.21.
//

import SwiftUI

struct NewsListHoch: View {
    
    let news: [News] = Bundle.main.decode("News.json")
    
    @State var newsOnline : [NewsOnline] = []
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        NavigationView {
            
           
            
            List {
                ForEach(newsOnline, id: \.id) { newsOnline in
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            NewsListCellHoch(headline: newsOnline.headline, autor: newsOnline.autor, date: newsOnline.date, image: "newsID2", textPreview: newsOnline.textPreview)
                        })
                        
                    
                    
                }
                
                
                
                
            }
            
            .onAppear {
                apiCall().getNewsOnline { (newsOnline) in
                    self.newsOnline = newsOnline
                }
            }
            .listStyle(InsetListStyle())
            .navigationBarTitle("TTD News")
            .navigationBarTitleDisplayMode(.inline)
            .animation(Animation.linear(duration: 0.4))
            .animation(Animation.easeOut(duration: 0.5))
            
            
            
            
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct NewsListHoch_Previews: PreviewProvider {
    static var previews: some View {
        NewsListHoch()
    }
}
