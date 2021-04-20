//
//  NewsList.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 10.04.21.
//

import SwiftUI

struct NewsList: View {
    
    let news: [News] = Bundle.main.decode("News.json")
    
    private var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach(news, id: \.id) { news in
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            NewsListCell(headline: news.headline, autor: news.autor, date: news.date, image: news.image, textPreview: news.textPreview)
                        }).frame(maxWidth: screenSize.width)
                    
                    
                }.padding()
                
                
            }.listStyle(InsetListStyle())
            .navigationBarTitle("TTD News")
            .navigationBarTitleDisplayMode(.inline)
            .animation(Animation.linear(duration: 0.4))
            .animation(Animation.easeOut(duration: 0.5))
            
            
            
            
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct NewsList_Previews: PreviewProvider {
    static var previews: some View {
        NewsList()
    }
}
