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
                Text("Überblick über unsere Trainingszeiten und Locations")
                    .font(.title2)
                    .frame(maxWidth: 340)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                ScrollView {
                    VStack(spacing: -40) {
                        
                        ScrollView(.horizontal) {
                            HStack {
                                VStack {
                                    Image("ttd-logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        
                                    
                                    Text("Swim")
                                        .font(.title2)
                                }.padding(.leading)
                                
                                
                                
                                LazyHGrid(rows: gridItems, spacing: 0, content: {
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Montag", uhrzeit: "20 - 21:45", ort: "Rheinbad 50", detail: " Leistungsstärke III (1:30-1:45), IV(1:45-2:00) & V(>2:00)")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Mittwoch", uhrzeit: "20 - 21:45", ort: "Rheinbad 50", detail: "Gruppen der Leistungsstärke I(<1:15) & II(1:15-1:30) ")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Freitag", uhrzeit: "19:45 - 21:30", ort: "Rheinbad 50", detail: "Gruppen der Leistungsstärke III (1:30-1:45), IV(1:45-2:00) & V(>2:00) ")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Samstag", uhrzeit: "17 - 18", ort: "Rheinbad 33", detail: "Schwerpuntk: Technik")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Montag - Freitag", uhrzeit: "6 - 8", ort: "Rheinbad 50", detail: "Frühschwimmerangebot mit TTD-Ausweis: Er: 1,50 € / Ki: 1 €")
                                    
                                })
                            }
                        }
                        Divider()
                            .padding()
                        ////
                        
                        ScrollView(.horizontal) {
                            
                            HStack {
                                VStack {
                                    Image("ttd-logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        
                                    
                                    Text("Run")
                                        .font(.title2)
                                }.padding(.leading)
                                
                                
                                
                                LazyHGrid(rows: gridItems, spacing: 0, content: {
                                    
                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                    TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                })
                            }
                            
                            
                        }
                        Divider()
                            .padding()
                        ////
                        
                        ScrollView(.horizontal) {
                            
                            HStack {
                                VStack {
                                    Image("ttd-logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        
                                    
                                    Text("Bike")
                                        .font(.title2)
                                }.padding(.leading)
                                
                                
                                
                                LazyHGrid(rows: gridItems, spacing: 0, content: {
                                    
                                    TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                                    
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
