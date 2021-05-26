//
//  ArenaSportParkTrainingView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 26.05.21.
//

import SwiftUI
import MapKit

struct ArenaSportParkTrainingView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TrainingCardFlipASPMap: View {
    
    @State var degrees: Double = 1
    @State var isFlipped: Bool = true
    
    var tag: String
    var uhrzeit: String
    var ort: String
    var detail: String
    
    var body: some View {
        VStack {
            VStack {
                Group {
                    if isFlipped {
                        TrainingCardFrontASP(tag: tag, uhrzeit: uhrzeit, ort: ort, detail: detail)
                        
                    } else {
                        TrainingCardBackASP()
                        
                    }
                }
                
            }.rotation3DEffect(
                .degrees(degrees),
                axis: (x: 0.0, y: 1.0, z: 0.0)
                
            )
        }.onTapGesture {
            withAnimation(.easeIn(duration: 0.3)){
                
                degrees += 180
                isFlipped.toggle()
                
            }
            
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct TrainingCardFrontASP: View {
    
  
    
    var tag: String = ""
    var uhrzeit: String = ""
    var ort: String = ""
    var detail: String = ""
    
    
    
    var body: some View {
        VStack { // Montag
            VStack(spacing: 4) {
                VStack {
                    Text(tag)
                        .foregroundColor(.ttdText)
                        .font(.headline)
                    Text(uhrzeit)
                }
                .padding(8)
                Divider()
                VStack(spacing: 12) {
                    Text(ort)
                        .foregroundColor(.ttdText)
                        .font(.headline)
             
                    NavigationLink(
                        destination:
                            MapTrainingLocationASP()
                        ,
                        label: {
                            Image(systemName: "map")
                                .foregroundColor(.accentColor)
                        })
                    
                }
                .padding(8)
                Divider()
                Text(detail)
                    .font(.body)
                    .padding()
            }
            .padding(2)
            .multilineTextAlignment(.center)
            .font(.callout)
            .lineSpacing(8.0)
            .padding(8)
            .background((Color.ttdWhite))
            .cornerRadius(25)
            .shadow(color: Color.gray.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
            
        } // Montag
        .padding(.horizontal, 22)
        .frame(width: 330, height: 350, alignment: .center)
    }
}

struct TrainingCardBackASP: View {
    var body: some View {
        VStack {
            MapTrainingLocationASP()
                .frame(height: 200)
        }.padding(2)
        .multilineTextAlignment(.center)
        .font(.callout)
        .lineSpacing(8.0)
        .padding(8)
        .background((Color.ttdWhite))
        .cornerRadius(25)
        .shadow(color: Color.gray.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
        .frame(width: 330, height: 350, alignment: .center)
        .rotation3DEffect(
            .degrees(180),
            axis: (x: 0.0, y: 1.0, z: 0.0)
            
            )
        .padding(.horizontal, 22)
    }
}

struct MapTrainingLocationASP: View {
    
    
    let spots : [Spots] = Bundle.main.decode("Spots.json")
    
    var locations = [
        Locations(name: "Arena Sport Park", coordinate: .init(latitude: 51.26124555326922, longitude: 6.730404608961955))
        ]
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 51.26124555326922, longitude: 6.730404608961955)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
        
    }()
    
    
    var body: some View {
        
//        Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true)
        
        NavigationView {
            Map(coordinateRegion: $region, annotationItems: locations) { item in
                
                MapAnnotation(coordinate: item.coordinate)
                {
                    MapAnnotationView(spotName: item.name)
                        
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
            
            
        
    }
}
