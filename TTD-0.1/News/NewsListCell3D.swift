//
//  NewsListCell3D.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 21.04.21.
//

import SwiftUI

struct NewsListCell3D: View {
    var headline: String
    var autor: String
    var date: String
    var image: String
    var textPreview: String
    
     var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        // uiImage: image.load()
        
        
            
            VStack(alignment: .center ,spacing: 10){
                
                VStack(spacing: 12) {
                    Text(headline)
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .foregroundColor(.ttdText)
                        .padding(.top, 12)
                    
                    Text(date)
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .font(.caption)
                
                Image(uiImage: image.load())
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
                    .rotation3DEffect(
                        .degrees(10),
                        axis: (x: 1.0, y: 1.0, z: 0.0)
                        
                    ).padding(12)
                    .frame(maxWidth: screenSize.width * 0.4, maxHeight: screenSize.height * 0.2, alignment: .center)
//                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .shadow(color: Color.gray.opacity(0.3), radius: 15, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.1), radius: 15, x: -10, y: -10)
                    .padding(4)
                    .offset(x: 10, y: 10.0)
                
//                Divider()
                
                
                    Spacer()
                    
                
//
//
//                Text(textPreview)
//                    .font(.body)
//                    .lineLimit(3)
//                    .lineSpacing(5)
//                    .padding(12)
//                    .foregroundColor(.black)
                    
                    
                }// V
                .frame(minWidth: screenSize.width * 0.5,  maxWidth: screenSize.width * 0.6, maxHeight: screenSize.height * 0.45, alignment: .center)
                
                
                
        
                
            }.padding(12)
            .frame(minWidth: screenSize.width * 0.8,  maxWidth: screenSize.width * 0.8,
                   minHeight: screenSize.height * 0.3, maxHeight: screenSize.height * 0.8,
                   alignment: .center)
            .background(Color.ttdWhite)
            .cornerRadius(25)
            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
            
            
            
      
        
    }
}

struct NewsListCell3D_Previews: PreviewProvider {
    static var previews: some View {
        NewsListCell3D(headline: "Headline", autor: "Autor", date: "12.123.123", image: "jens", textPreview: "fjdkal?? jfkdla??sa jfj  wh fnkasl?? fdajkda ??jfdak?? f jhfdka??jdkla?? fdhafjkd??a fjkdjaf??kdj fahklfd??ajfk a")
    }
}
