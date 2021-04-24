//
//  SpotsListCell.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 22.04.21.
//

import SwiftUI

struct SpotsListCell: View {
    
    let spots : [Spots] = Bundle.main.decode("Spots.json")
    
  
    var headline: String
   
    var disciplin: String
    var image: String
    var shortInfo: String
   
    
    var body: some View {
        
        
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
                .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                .rotation3DEffect(
                    .degrees(10),
                    axis: (x: 1.0, y: 1.0, z: 0.0)
                    )
                .padding(10)
            
            VStack(spacing: 20) {
                Text(headline)
                    .font(.body)
                    .multilineTextAlignment(.center)
                
                Text(disciplin)
                    .font(.subheadline)
                    .offset(y: -10)
                
                Text(shortInfo)
                    .font(.footnote)
                    .lineLimit(4)
            }
            .padding()
        }
        .frame(minWidth: 320, maxWidth: 600, maxHeight: 300)
        .background(Color.ttdWhite)
        .cornerRadius(25)
        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
        .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
        .padding()
    }
}

struct SpotsListCell_Previews: PreviewProvider {
    static var previews: some View {
        SpotsListCell(headline: "", disciplin: "", image: "", shortInfo: "")
    }
}
