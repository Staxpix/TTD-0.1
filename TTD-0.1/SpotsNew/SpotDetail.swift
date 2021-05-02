//
//  SpotDetail.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 30.04.21.
//

import SwiftUI
import MapKit

struct SpotDetail: View {
    let spots: Spots
    let screenSize = UIScreen.main.bounds
    var body: some View {
        
        
        
        ScrollView {
            VStack {
                    
                    VStack {
                        
                        Text(spots.headline)
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.ttdText)
                            .padding()
                        
                        HStack {
                            Text(spots.disciplin)
                            
                            Text(spots.distance)
                        }.font(.body)
                        .foregroundColor(.accentColor)
                    
                        
                        SpotInsetGallery(spots: spots)
                            
                        NavigationLink(
                            destination: SpotDetailViewMap(coordinates: spots.locationsSpots, spotName: spots.headline),
                            label: {
                                HStack {
                                  
                                    Image(systemName: "map")
                                        .font(.title3)
                                        .foregroundColor(.ttdText)
                                    
                                } })
                        
                       
                        
                        
                        Text("Infos")
                            .foregroundColor(.ttdText)
                            .font(.title2)
                            .padding(.top,10)
                            .offset(x: 0, y: 10)
                        
                        
                        Text(spots.text)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding()
                       
                        VStack {
                            
                            Text("Short Map")
                                .font(.title3)
                                .foregroundColor(.ttdText)
                            
                            SpotDetailViewMapInset(coordinates: spots.locationsSpots, spotName: spots.headline)
                                
                                .frame(height: 200)
                                .cornerRadius(25)
                               
                                
                                .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                                
                                
                        }
                        .padding()
                        .padding(.bottom, 20)
                        
                    }
                    .background(Color.ttdWhite)
                    .cornerRadius(25)
                   
                    
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                    
                        
                    
            }.padding(20)
            .navigationBarTitle("\(spots.headline)", displayMode: .inline)
        }
        
            
        
}

struct SpotDetail_Previews: PreviewProvider {
    static let spots : [Spots] = Bundle.main.decode("Spots.json")
    static var previews: some View {
        SpotDetail(spots: spots[0])
    }
}
}
