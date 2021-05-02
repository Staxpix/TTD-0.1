//
//  SpotDetailView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 22.04.21.
//

import SwiftUI
import MapKit

struct SpotDetailView: View {
    
    let spots : [Spots] = Bundle.main.decode("Spots.json")
    
    
    var id: Int
    var headline: String
    var distance: String
    var disciplin: String
    var image: String
    var shortInfo: String
    var latitude: Double
    var longitude: Double
    var text: String
    var locationsSpots: CLLocationCoordinate2D
    var index: Int
    
    
    var body: some View {
        
        ScrollView {
            VStack {
                
                VStack(spacing: 12) {
                    Text(headline)
                        .font(.title)
                        .padding(.top, 16)
                    Text(shortInfo)
                        .font(.body)
                    NavigationLink(
                        destination: SpotDetailViewMap(coordinates: spots[index-1].locationsSpots, spotName: spots[index-1].headline),
                        label: {
                            Image(systemName: "map")
                                .font(.title)
                            Text(distance)
                                .font(.title3)
                        })
                    
                }
                .padding()
                .multilineTextAlignment(.center)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 30) {
                        
                       
                        
//                        Image(image)
//                            .resizable()
//                            .scaledToFit()
//                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
//                            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
//                            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
//                            .rotation3DEffect(
//                                .degrees(10),
//                                axis: (x: 1.0, y: 1.0, z: 0.0)
//                                )
//                            .padding(10)
//                        Image(image)
//                            .resizable()
//                            .scaledToFit()
//                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
//                            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
//                            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
//                            .rotation3DEffect(
//                                .degrees(10),
//                                axis: (x: 1.0, y: 1.0, z: 0.0)
//                                )
//                            .padding(10)
//                        Image(image)
//                            .resizable()
//                            .scaledToFit()
//                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
//                            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
//                            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
//                            .rotation3DEffect(
//                                .degrees(10),
//                                axis: (x: 1.0, y: 1.0, z: 0.0)
//                                )
//                            .padding(10)
                    }// H
                    .frame(maxHeight: 200)
                    .padding(.bottom, 50)
                }// S
                .padding()
                
                Text(text)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.title3)
                    .lineSpacing(6)
                    .padding(20)
                
                
            }//V
            .background(Color.ttdWhite)
            .cornerRadius(25)
            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
            .padding(22)
        }//S
        
    }//V
}

//struct SpotDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        SpotDetailView(id: "", headline: "", distance: "", disciplin: "", image: "", shortInfo: "", latitude: 20, longitude: 20, text: "", locationsSpots: "")
//    }
//}
