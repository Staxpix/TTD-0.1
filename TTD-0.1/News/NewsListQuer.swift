//
//  NewsListQuer.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 11.04.21.
//

import SwiftUI



struct NewsListQuer: View {
    
    let news: [News] = Bundle.main.decode("News.json")
    
    @State var newsOnline : [NewsOnline] = []
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        NavigationView {
            
           
            
            ScrollView {
                VStack(spacing: 40) {
                    ForEach(newsOnline, id: \.id) { newsOnline in
                        NavigationLink(
                            destination: NewsDetailView(headline: newsOnline.headline, date: newsOnline.date, autor: newsOnline.autor, image: newsOnline.image, textPreview: "", text: newsOnline.text, introTextLink: newsOnline.introTextLink, linkHomepage: newsOnline.linkHomepage),
                            label: {
                                NewsListCell2_0(headline: newsOnline.headline, autor: newsOnline.autor, date: newsOnline.date, image: newsOnline.image, textPreview: newsOnline.textPreview)
                            })
                            
                        
                        
                    }.padding(.horizontal, 50)
                }.padding(.top, 20)
                
                
                
                
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

struct NewsListQuer_Previews: PreviewProvider {
    static var previews: some View {
        NewsListQuer()
    }
}
