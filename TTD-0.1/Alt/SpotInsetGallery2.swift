//
//  SpotInsetGallery2.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 12.05.21.
//

import SwiftUI

struct SpotInsetGallery2: View {
    
    let spots: Spots
    
    struct FlatLinkStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
        }
    }
    
    var body: some View {
        
        
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(alignment: .center, spacing: 25) {
                
                
                ForEach(spots.gallery, id: \.self) { item in
                    
                    
                    NavigationLink(
                        destination: Image(item)
                            .resizable()
                            .scaledToFit(),
                        label: {
                            Image(item)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                                .cornerRadius(12)
                                .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                                .padding(.vertical,30)
                        }).buttonStyle(FlatLinkStyle())
                    
                            
                                
                        }
                
                
                
                } // Loop
            } // HStack
        } // Scroll
        
    }


struct SpotInsetGallery2_Previews: PreviewProvider {
    static let spots : [Spots] = Bundle.main.decode("Spots.json")
    static var previews: some View {
        SpotInsetGallery2(spots: spots[0])
    }
}
