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
                                    
                                    TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                                    
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
                                    
                                    TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                                    
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
