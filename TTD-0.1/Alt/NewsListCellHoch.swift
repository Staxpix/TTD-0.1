//
//  NewsListCellHoch.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 13.04.21.
//

import SwiftUI

struct NewsListCellHoch: View {
    
    var headline: String
    var autor: String
    var date: String
    var image: String
    var textPreview: String
    
     var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        
        VStack {
            VStack {
                Text(headline)
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                HStack {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(25)
                        
                        .shadow(color: Color.gray.opacity(0.4), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                        
                }.padding(.horizontal, 40)
                
                HStack {
                    Text(autor)
                    Text(date)
                }
                .font(.footnote)
                .padding(8)
                
                Text(textPreview)
                    .lineLimit(3)
//                    .frame(width: screenSize.width * 0.6, height: screenSize.height * 0.2, alignment: .top)
                    .padding()
            }
            .background(RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.init(.sRGB, red: 245, green: 255, blue: 250, opacity: 1))
                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                            
        )
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 20)
        
    }
}

struct NewsListCellHoch_Previews: PreviewProvider {
    static var previews: some View {
        NewsListCellHoch(headline: "jfkdlöa", autor: "jfdkla", date: "jfka", image: "newsID1", textPreview: "fjdkajfd jfdla fjdkalö jfkdalö jfkdaöfjkdalö  jfdaöl")
    }
}
