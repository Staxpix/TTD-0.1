//
//  NewsList2.0.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 21.04.21.
//

import SwiftUI

struct NewsList2_0: View {
    
    
    
    @State var newsOnline : [NewsOnline] = []
    
    
    
    var screenSize = UIScreen.main.bounds
    
    
    var body: some View {

        
        
        NavigationView {
            List(newsOnline, id: \.id) { newsOnline in
                NavigationLink(
                    destination: NewsDetailView(headline: newsOnline.headline, date: newsOnline.date, autor: newsOnline.autor, image: newsOnline.image, textPreview: newsOnline.textPreview, text: newsOnline.text, introTextLink: newsOnline.introTextLink, linkHomepage: newsOnline.linkHomepage),
                    label: {
                        NewsListCell3D(headline: newsOnline.headline, autor: newsOnline.autor, date: newsOnline.date, image: newsOnline.image, textPreview: newsOnline.textPreview)
                    })
                    .padding(.vertical)
                
                
                
            }
            .padding()
            .listStyle(PlainListStyle())
            .navigationBarTitle("TTD News")
            .navigationBarTitleDisplayMode(.inline)
            .animation(Animation.linear(duration: 0.4))
            .animation(Animation.easeOut(duration: 0.5))
        }
        .onAppear {
            apiCall().getNewsOnline { (newsOnline) in
                self.newsOnline = newsOnline
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())

    }
}

struct NewsList2_0_Previews: PreviewProvider {
    static var previews: some View {
        NewsList2_0()
    }
}
