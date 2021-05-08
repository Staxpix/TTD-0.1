//
//  NewsListLazy.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 28.04.21.
//

import SwiftUI

struct NewsListLazy: View {
    
    @State var newsOnline : [NewsOnline] = []
    
    var screenSize = UIScreen.main.bounds
    
    private let gridItems = [GridItem(.flexible(minimum: 380, maximum: 1360))]
                             
                             
//                             , GridItem(.flexible(minimum: 360, maximum: 1360)), GridItem(.flexible(minimum: 360, maximum: 1360)), GridItem(.flexible(minimum: 360, maximum: 1360))]
    
    
    
    struct FlatLinkStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
        }
    }
    
    var body: some View {
        NavigationView {
            
                ScrollView {
                    
                    LazyVGrid(columns: gridItems, spacing: 8, content: {
                        ForEach(newsOnline) { newsOnline in
                            NavigationLink(
                                
                                
                                destination: NewsDetailView(headline: newsOnline.headline, date: newsOnline.date, autor: newsOnline.autor, image: newsOnline.image, textPreview: newsOnline.textPreview, text: newsOnline.text, introTextLink: newsOnline.introTextLink, linkHomepage: newsOnline.linkHomepage),
                                label: {
                                    NewsListCell3D(headline: newsOnline.headline, autor: newsOnline.autor, date: newsOnline.date, image: newsOnline.image, textPreview: newsOnline.textPreview)
                                        .padding(.vertical)
                                        
                                    
                                })
                                .buttonStyle(FlatLinkStyle())
                        }.padding()
                    })
                }
            
            .navigationTitle("TTD News")
            .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: Button(action: {
                    apiCall().getNewsOnline { (newsOnline) in
                        self.newsOnline = newsOnline
                    }
                }, label: {
                    Text("Refresh")
                }))

        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            apiCall().getNewsOnline { (newsOnline) in
                self.newsOnline = newsOnline
            }
            
        }
        
    }
}

struct NewsListLazy_Previews: PreviewProvider {
    static var previews: some View {
        NewsListLazy()
    }
}
