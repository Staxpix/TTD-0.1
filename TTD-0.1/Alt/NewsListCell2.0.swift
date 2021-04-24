//
//  NewsListCell2.0.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 20.04.21.
//

import SwiftUI

struct NewsListCell2_0: View {
    
    var headline: String
    var autor: String
    var date: String
    var image: String
    var textPreview: String
    
     var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        
        
        
            
            VStack(alignment: .center ,spacing: 10){
                Text(headline)
                    .font(.footnote)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .lineLimit(3)
                    .foregroundColor(.black)
                    .padding(.top, 12)
                
                Image(uiImage: image.load())
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
                    .frame(maxWidth: screenSize.width * 0.5, maxHeight: screenSize.height * 0.4, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .shadow(color: Color.gray.opacity(0.7), radius: 15, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.2), radius: 15, x: -10, y: -10)
                    .padding()
                
                
                VStack(alignment: .center, spacing: 10) {
                    
                    
                    
                   
                        
                    
                    HStack(spacing: 8) {
                        
                        Text(date)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }
                    .font(.caption)
                    
                    
                    
                    Text(textPreview)
                        .font(.footnote)
                        .lineLimit(3)
                        .lineSpacing(10)
                        .padding(12)
                        .foregroundColor(.black)
                        
                }
                
                
            }.padding(12)
            .frame(minWidth: screenSize.width * 0.8,  maxWidth: screenSize.width * 0.8, maxHeight: screenSize.height * 0.6, alignment: .center)
            .background(Color.ttdWhite)
            .cornerRadius(25)
            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
            
            
            
      
        
    }
}

struct NewsListCell2_0_Previews: PreviewProvider {
    static var previews: some View {
        NewsListCell2_0(headline: "fda", autor: "fda", date: "sfda", image: "oli", textPreview: "jfkdalö")
    }
}
