//
//  SpotInsetGallery.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 30.04.21.
//

import SwiftUI

struct SpotInsetGallery: View {
    
    let spots: Spots
    
    
    
    var body: some View {
        
        
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(alignment: .center, spacing: 25) {
                ForEach(spots.gallery, id: \.self) { item in
                    
                            Image(item)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                                .cornerRadius(12)
                                .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                                .padding(.vertical,30)
                                
                        }
                } // Loop
            } // HStack
        } // Scroll
        
    }


struct SpotInsetGallery_Previews: PreviewProvider {
    static let spots : [Spots] = Bundle.main.decode("Spots.json")
    static var previews: some View {
        SpotInsetGallery(spots: spots[0])
    }
}
