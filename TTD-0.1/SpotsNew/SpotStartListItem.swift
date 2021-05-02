//
//  SpotStartListItem.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 30.04.21.
//

import SwiftUI

struct SpotStartListItem: View {
    
    let screenSize = UIScreen.main.bounds
    
    let spots: Spots
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 16) {
                Image(spots.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(
                    RoundedRectangle(cornerRadius: 12))
                    .rotation3DEffect(
                        .degrees(10),
                        axis: (x: 1.0, y: 1.0, z: 0.0)
                    )
                    .padding(10)
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text(spots.headline)
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundColor(.ttdText)
                        
                        .multilineTextAlignment(.leading)
                    
                    Text(spots.disciplin)
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                        
                        .multilineTextAlignment(.leading)
                        
                    
                    Text(spots.shortInfo)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        
                    
                } // VStack
            } // HStack
            .frame(minWidth: screenSize.width * 0.7,  maxWidth: screenSize.width * 0.7, maxHeight: screenSize.height * 0.45, alignment: .leading)
            .padding(20)
            .background(Color.ttdWhite)
            .cornerRadius(25)
           
            
            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
            
        }
        .frame(minWidth: screenSize.width * 0.4,  maxWidth: screenSize.width * 0.7, maxHeight: screenSize.height * 0.45, alignment: .leading)
        
//        .frame(width: screenSize.width * 0.8, height: screenSize.height * 0.3, alignment: .center)
//        .frame(width: 330, height: 300, alignment: .center)
        .padding(.vertical,24)
    }
}

struct SpotStartListItem_Previews: PreviewProvider {
    static let spots : [Spots] = Bundle.main.decode("Spots.json")
    static var previews: some View {
        SpotStartListItem(spots: spots[1])
            .previewLayout(.sizeThatFits)
    }
}
