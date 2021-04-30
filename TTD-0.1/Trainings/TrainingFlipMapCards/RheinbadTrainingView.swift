//
//  RheinbadTrainingView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 25.04.21.
//

import SwiftUI
import MapKit

struct RheinbadTrainingView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TrainingCardFlipRheinbadMap: View {
    
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
                        TrainingCardFront(tag: tag, uhrzeit: uhrzeit, ort: ort, detail: detail)
                        
                    } else {
                        TrainingCardBack()
                        
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



struct TrainingCardFront: View {
    
  
    
    var tag: String = ""
    var uhrzeit: String = ""
    var ort: String = ""
    var detail: String = ""
    
    
    
    var body: some View {
        VStack { // Montag
            VStack(spacing: 4) {
                VStack {
                    Text(tag)
                        .font(.headline)
                    Text(uhrzeit)
                }
                .padding(8)
                Divider()
                VStack(spacing: 12) {
                    Text(ort)
                        .font(.headline)
             
                    NavigationLink(
                        destination:
                            MapTrainingLocationRheinbad()
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
//            .frame(minHeight: 300, alignment: .center)
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
        .frame(width: 330, height: 400, alignment: .center)
    }
}

struct TrainingCardBack: View {
    var body: some View {
        VStack {
            MapTrainingLocationRheinbad()
                .frame(height: 200)
        }.padding(2)
        .multilineTextAlignment(.center)
        .font(.callout)
        .lineSpacing(8.0)
        .padding(8)
        .background((Color.ttdWhite))
        .cornerRadius(25)
        .shadow(color: Color.gray.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
        .frame(width: 330, height: 400, alignment: .center)
        .rotation3DEffect(
            .degrees(180),
            axis: (x: 0.0, y: 1.0, z: 0.0)
            
            )
        .padding(.horizontal, 22)
    }
}


struct MapTrainingLocationRheinbad: View {
    
    
    let spots : [Spots] = Bundle.main.decode("Spots.json")
    
    var locations = [
        Locations(name: "Rheinbad", coordinate: .init(latitude: 51.264654, longitude: 6.733010))
        ]
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 51.264654, longitude: 6.733010)
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


struct RheinbadTrainingView_Previews: PreviewProvider {
    static var previews: some View {
        RheinbadTrainingView()
    }
}

