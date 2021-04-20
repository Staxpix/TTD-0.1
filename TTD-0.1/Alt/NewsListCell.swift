//
//  NewsListCell.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 10.04.21.
//

import SwiftUI

struct NewsListCell: View {
    
    var headline: String = ""
    var autor: String = ""
    var date: String = ""
    var image: String = ""
    var textPreview: String = ""
    
    var body: some View {
        
        ZStack {
            // GUTE FARBE FÜR TTD
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.init(.sRGB, red: 245, green: 255, blue: 250, opacity: 1))
                .frame(width: 300, height: 400, alignment: .center)
                .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
            
            VStack(spacing: 28) {
                Text(headline)
                    .font(.title2)
                    .lineLimit(2)
                    .frame(maxWidth: 280)
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .frame(width: 240, height: 150, alignment: .center)
                    .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.2), radius: 10, x: -2, y: -2)
                
                HStack(spacing: 80) {
                    Text(autor)
                    Text(date)
                }
                .font(.footnote)
                
                Text(textPreview)
                    .font(.body)
                    .lineLimit(2)
                    .frame(maxWidth: 280)
                
                    
                    
                    
                
            }
            
            
        }// ZStack
        
    }
}

struct NewsListCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsListCell()
            .previewLayout(.sizeThatFits)
    }
}
