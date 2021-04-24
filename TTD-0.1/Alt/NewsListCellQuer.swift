//
//  NewsListCellQuer.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 11.04.21.
//

import SwiftUI

extension String {
    func load() -> UIImage {
        
        do {
            guard let url = URL(string: self) else {
                return UIImage()
            }
            
            let data: Data = try Data(contentsOf: url)
            
            return UIImage(data: data) ?? UIImage()
            
        } catch {
            
        }
        
       
        
        
        return UIImage()
    }
}

struct NewsListCellQuer: View {
    
    var headline: String
    var autor: String
    var date: String
    var image: String
    var textPreview: String
    
     var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        
        
        
        ZStack(alignment: .center) {
            // GUTE FARBE FÜR TTD
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.init(.sRGB, red: 245, green: 255, blue: 250, opacity: 1))
                 
                .frame(maxWidth: screenSize.width * 0.9, maxHeight: screenSize.height * 0.6, alignment: .center)
                .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
                .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
            
            VStack(alignment: .center ,spacing: 10){
                
                
                Image(uiImage: image.load())
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
                    .frame(maxWidth: screenSize.width * 0.5, maxHeight: screenSize.height * 0.4, alignment: .center)
                    .shadow(color: Color.gray.opacity(0.5), radius: 15, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.5), radius: 15, x: -4, y: -4)
                    .padding()
                
                
                VStack(alignment: .center, spacing: 10) {
                    
                    
                    
                    Text(headline)
                        .font(.footnote)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .lineLimit(3)
                        .foregroundColor(.black)
                        
                    
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
            .frame(maxWidth: screenSize.width * 0.8, maxHeight: screenSize.height * 0.6, alignment: .center)
            
            
            
            
            
        }// ZStack
        
    }
}

struct NewsListCellQuer_Previews: PreviewProvider {
    static var previews: some View {
        NewsListCellQuer(headline: "jfkdlöa", autor: "jfdkla", date: "jfka", image: "oli", textPreview: "fjdkajfd fjkdalö  jfdaöl")
    }
}
