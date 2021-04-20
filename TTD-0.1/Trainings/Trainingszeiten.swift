//
//  Trainingszeiten.swift
//  TTD_Test
//
//  Created by Daniel Enning on 11.04.21.
//

import SwiftUI

struct Trainingszeiten: View {
    
    private var screenSize = UIScreen.main.bounds

    var body: some View {
        NavigationView {
            
            
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                LazyHStack(alignment: .center, spacing: 44) {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 44) {
                                Text("Swim")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .padding()
                            
                           
                            
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                
                                
                        }.frame(maxWidth: screenSize.width)
                        
                    }
                    
                    Divider()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 44) {
                                Text("Run")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .padding()
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                
                                
                        }.frame(maxWidth: screenSize.width)
                    }
                    
                    
                    Divider()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 44) {
                                Text("Bike")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .padding()
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                TrainingDayCell(tag: "Montag", uhrzeit: "16:00 - 17:00 Uhr", ort: "Rheinbad 50", detail: "Leistungsstärke III (1:30-1:45) IV(1:45-2:00) & V(>2:00)")
                                
                                
                                
                        }.frame(maxWidth: screenSize.width)
                    }
                    
                }
                

                
            }.animation(.interpolatingSpring(mass: 1, stiffness: 120.0, damping: 12, initialVelocity: 1))
//            .animation(Animation.spring(response: 10, dampingFraction: 2, blendDuration: 3))
                            .navigationBarTitle("TTD Trainingszeiten")
                            .navigationBarTitleDisplayMode(.inline)
            
            
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Trainingszeiten_Previews: PreviewProvider {
    static var previews: some View {
        Trainingszeiten()
            
    }
}

struct TrainingDayCell: View {
    
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
                .padding()
                Divider()
                VStack(spacing: 12) {
                    Text(ort)
                        .font(.headline)
             
                    NavigationLink(
                        destination: MapViewTrainingsLocations(),
                        label: {
                            Image(systemName: "map")
                                .foregroundColor(.accentColor)
                        })
                    
                }
                .padding()
                Divider()
                Text(detail)
                    .font(.body)
                    .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
            .font(.callout)
            .lineSpacing(8.0)
            .padding()
            .background((Color.ttdWhite))
            .cornerRadius(25)
            .shadow(color: Color.gray.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
            
        } // Montag
        .padding(.horizontal, 22)
    }
}
