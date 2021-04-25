//
//  PersonsViewFlipOverview.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.04.21.
//

import SwiftUI

struct PersonsViewFlipOverview: View {
    private var screenSize = UIScreen.main.bounds
    
    let persons: [Persons] = Bundle.main.decode("Persons.json")
    
    @State var degrees: Double = 1
    @State var isFlipped: Bool = true
    
    var body: some View {
        
        
        
        NavigationView {
            
            VStack {
                ScrollView {
                    
                    VStack {
                        
                        Image("ttd-schriftzug")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 80, alignment: .center)
                            .offset(y: 0)
                            .animation(Animation.easeInOut(duration: 0.6).delay(0.2))
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack {
                                
                                CardOliPlum(name: persons[1].name, status: persons[1].status, image: persons[1].image
                                )
                                
                                CardOliPlum(name: persons[2].name, status: persons[2].status, image: persons[2].image)
                                
                                CardIngmar()
                                
                                CardKea()
                            }.padding(.leading, 30)
                        }
                        .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 1))
                        .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 3))
                    }
                    
                    VStack {
                        
                        Image("ttd-schriftzug")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 80, alignment: .center)
                            .offset(y: 0)
                            .animation(Animation.easeInOut(duration: 0.6).delay(0.2))
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack {
                                CardOliPlum(name: persons[3].name, status: persons[3].status, image: persons[3].image)
                                
                                CardIngmar()
                                
                                CardKea()
                            }.padding(.leading, 30)
                        }
                        .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 1))
                        .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 3))
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarTitle("Trainer und APs")
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
    
    struct PersonsViewFlipOverview_Previews: PreviewProvider {
        static var previews: some View {
            PersonsViewFlipOverview()
        }
    }
}

struct CardOliPlum: View {
    @State var degrees: Double = 1
    @State var isFlipped: Bool = true
    
    var name : String
    var status : String
    var image : String
    
    var body: some View {
        VStack {
            VStack {
                Group {
                    if isFlipped {
                        PersonsCardView(name: name, status: status, image: image)
                        
                    } else {
                        PersonsCardBackView()
                        
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

struct CardIngmar: View {
    @State var degrees: Double = 1
    @State var isFlipped: Bool = true
    var body: some View {
        VStack {
            VStack {
                Group {
                    if isFlipped {
                        PersonsCardView(name: "oli vorderseite", status: "fjdalsöal", image: "ingmar")
                        
                    } else {
                        PersonsCardBackView()
                        
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

struct CardKea: View {
    @State var degrees: Double = 1
    @State var isFlipped: Bool = true
    var body: some View {
        VStack {
            VStack {
                Group {
                    if isFlipped {
                        PersonsCardView(name: "oli vorderseite", status: "fjdalsöal", image: "kea")
                        
                    } else {
                        PersonsCardBackView()
                        
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

