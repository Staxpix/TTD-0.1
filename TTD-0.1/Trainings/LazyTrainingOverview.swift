//
//  LazyTrainingOverview.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 28.04.21.
//

import SwiftUI

struct LazyTrainingOverview: View {
    
    private let gridItems = [GridItem(.flexible(minimum: 380, maximum: 380))]
    
    var body: some View {
        NavigationView {
            VStack {
                
                
                ScrollView(showsIndicators : false) {
                    VStack(spacing: -40) {
                        Text("Überblick über unsere Trainingszeiten und Locations")
                                            .font(.title3)
                                            .frame(maxWidth: 340)
                                            .multilineTextAlignment(.center)
                                            .padding( 12)
                                            .background(
                                                                                                    Color.ttdWhite
                                                                                         
                                                                                                )
                                                                                                .cornerRadius(25)
                                                                                                
                                                                                                .rotation3DEffect(
                                                                                                                        .degrees(10),
                                                                                                                        axis: (x: 1.0, y: 1.0, z: 0.0)
                                                                                                                    )
                                                                            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 15, y: 10)
                                                                            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -15, y: -10)
                                            .padding(.leading, 20)
                                            .padding(.top, 16)
                                            .padding(.bottom, 20)
                        
                        ScrollView(.horizontal, showsIndicators : false) {
                            HStack {
                                VStack {
                                    Image("ttd-logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        
                                    
                                    Text("Swim")
                                        .foregroundColor(.ttdText)
                                        .font(.title2)
                                        .padding(.bottom, 10)
                                }.background(
                                    Color.ttdWhite
                         
                                )
                                .cornerRadius(25)
                                
                                .rotation3DEffect(
                                                        .degrees(10),
                                                        axis: (x: 1.0, y: 1.0, z: 0.0)
                                                    )
            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 15, y: 10)
            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -15, y: -10)
            .padding(.leading)
                                
                                
                                
                                LazyHGrid(rows: gridItems, spacing: 0, content: {
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Montag", uhrzeit: "20 - 21:45", ort: "Rheinbad 50", detail: " Leistungsstärke III (1:30-1:45), IV(1:45-2:00) & V(>2:00)")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Mittwoch", uhrzeit: "20 - 21:45", ort: "Rheinbad 50", detail: "Gruppen der Leistungsstärke I(<1:15) & II(1:15-1:30) ")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Freitag", uhrzeit: "19:45 - 21:30", ort: "Rheinbad 50", detail: "Gruppen der Leistungsstärke III (1:30-1:45), IV(1:45-2:00) & V(>2:00) ")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Samstag", uhrzeit: "17 - 18", ort: "Rheinbad 33", detail: "Schwerpunkt: Technik")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Montag - Freitag", uhrzeit: "6 - 8", ort: "Rheinbad 50", detail: "Frühschwimmerangebot mit TTD-Ausweis: Er: 1,50 € / Ki: 1 €")
                                    
                                })
                            }
                        }
                        Divider()
                            .padding()
                        ////
                        
                        ScrollView(.horizontal, showsIndicators : false) {
                            
                            HStack {
                                VStack {
                                    Image("ttd-logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        
                                    
                                    Text("Run")
                                        .foregroundColor(.ttdText)
                                        .font(.title2)
                                        .padding(.bottom, 10)
                                }
                                .background(
                                                        Color.ttdWhite
                                             
                                                    )
                                                    .cornerRadius(25)
                                                    
                                                    .rotation3DEffect(
                                                                            .degrees(10),
                                                                            axis: (x: 1.0, y: 1.0, z: 0.0)
                                                                        )
                                .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 15, y: 10)
                                .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -15, y: -10)
                                .padding(.leading)
                                
                                
                                
                                LazyHGrid(rows: gridItems, spacing: 0, content: {
                                    
                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                    TrainingCardFlipASPMap(tag: "Dienstag", uhrzeit: "18:30 - 20", ort: "Arena Sportpark", detail: "Lauftraining / Intervalle auf der Bahn")
                                    
//                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
//
//                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
//
//                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
//
//                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
//
//                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
//
//                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                })
                            }
                            
                            
                        }
                        Divider()
                            .padding()
                        ////
                        
                        ScrollView(.horizontal, showsIndicators : false) {
                            
                            HStack {
                                VStack {
                                    Image("ttd-logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        
                                    
                                    Text("Bike")
                                        .foregroundColor(.ttdText)
                                        .font(.title2)
                                        .padding(.bottom, 10)
                                }.background(
                                    Color.ttdWhite
                         
                                )
                                .cornerRadius(25)
                                
                                .rotation3DEffect(
                                                        .degrees(10),
                                                        axis: (x: 1.0, y: 1.0, z: 0.0)
                                                    )
            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 15, y: 10)
            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -15, y: -10)
            .padding(.leading)
                                
                                
                                
                                LazyHGrid(rows: gridItems, spacing: 0, content: {
                                    
                                    TrainingCardFlipTHBMap(tag: "Sonntag", uhrzeit: "9 Uhr", ort: "Theodor-Heuss Brücke", detail: "Start der flotten Gruppe.")
                                    
                                    TrainingCardFlipTHBMap(tag: "Sonntag", uhrzeit: "10 Uhr", ort: "Theodor-Heuss Brücke", detail: "Team-Ausfahrt mit mehreren (Leistungs-)Gruppen.")
                                    
                                    
                                    
                                })
                            }
                            
                            
                        }
                        
                    }
                }
                .navigationBarTitle("TTD Training")
                .navigationBarTitleDisplayMode(.inline)
                
                
                
                
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct LazyTrainingOverview_Previews: PreviewProvider {
    static var previews: some View {
        LazyTrainingOverview()
    }
}
