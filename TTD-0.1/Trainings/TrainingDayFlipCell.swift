//
//  TrainingDayFlipCell.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 25.04.21.
//

import SwiftUI

struct TrainingDayFlipCell: View {
    
    private var screenSize = UIScreen.main.bounds
    
    var body: some View {
        NavigationView {
            
            
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                LazyHStack(alignment: .center, spacing: 2) {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: -44) {
                                Text("Swim")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .padding()
                            
                           
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipTHBMap(tag: "2", uhrzeit: "13-17 Uhr", ort: "THB", detail: "jfdkla fjdkla fjdkal fjdkal fdjal fdjakl")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                              
                                
                                
                                
                        }.padding()
                        .frame(maxWidth: screenSize.width)
                        
                    }
                    
                    
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: -44) {
                                Text("Run")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .padding()
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipTHBMap(tag: "2", uhrzeit: "13-17 Uhr", ort: "THB", detail: "jfdkla fjdkla fjdkal fjdkal fdjal fdjakl")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                                
                                
                                
                        }.padding()
                        .frame(maxWidth: screenSize.width)
                    }
                    
                    
                    
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: -44) {
                                Text("Bike")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .padding()
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                            TrainingCardFlipRheinbadMap(tag: "1", uhrzeit: "1", ort: "Rheinbad", detail: " jfdklaljflsa jfdkla fdkajda fjdakl  fdnkal fd fdjklajdf ")
                            
                                
                                
                                
                        }.padding()
                        .frame(maxWidth: screenSize.width)
                    }
                    
                }.padding(.horizontal)
                

                
            }
            .animation(.interpolatingSpring(mass: 1, stiffness: 120.0, damping: 12, initialVelocity: 1))
//            .animation(Animation.spring(response: 10, dampingFraction: 2, blendDuration: 3))
                            .navigationBarTitle("TTD Trainingszeiten")
                            .navigationBarTitleDisplayMode(.inline)
            
            
            
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct TrainingDayFlipCell_Previews: PreviewProvider {
    static var previews: some View {
        TrainingDayFlipCell()
    }
}


