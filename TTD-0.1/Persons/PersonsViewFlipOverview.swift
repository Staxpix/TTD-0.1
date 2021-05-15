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
    
    private let gridItems = [GridItem(.flexible(minimum: 360, maximum: 380)), GridItem(.flexible(minimum: 360, maximum: 380)), GridItem(.flexible(minimum: 360, maximum: 380)), GridItem(.flexible(minimum: 360, maximum: 380))]
    
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
                        
                        Text("Der Vorstand")
                            .font(.title2)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            LazyVGrid(columns: gridItems, spacing: 16, content: {
                                ForEach(persons[0...6], id: \.id) { persons in
                                    PersonFlipCard(name: persons.name, status: persons.status, description: persons.description, image: persons.image)
                                }.padding(.leading, 30)
                            })
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
                        
                        Text("Unser Trainer-Team")
                            .font(.title2)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            LazyVGrid(columns: gridItems, spacing: 16, content: {
                                ForEach(persons[7...14], id: \.id) { persons in
                                    PersonFlipCard(name: persons.name, status: persons.status, description: persons.description, image: persons.image)
                                }.padding(.leading, 30)
                            })
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

struct PersonFlipCard: View {
    @State var degrees: Double = 1
    @State var isFlipped: Bool = true
    
    var name : String
    var status: String
    var description: String
    var image : String
    
    var body: some View {
        VStack {
            VStack {
                Group {
                    if isFlipped {
                        PersonsCardView(name: name, status: status, image: image)
                        
                    } else {
                        PersonsCardBackView(name: name, description: description, image: image)
                        
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

//struct CardIngmar: View {
//    @State var degrees: Double = 1
//    @State var isFlipped: Bool = true
//    var body: some View {
//        VStack {
//            VStack {
//                Group {
//                    if isFlipped {
//                        PersonsCardView(name: "oli vorderseite", status: "fjdalsöal", image: "ingmar")
//
//                    } else {
//                        PersonsCardBackView()
//
//                    }
//                }
//
//            }.rotation3DEffect(
//                .degrees(degrees),
//                axis: (x: 0.0, y: 1.0, z: 0.0)
//
//            )
//        }.onTapGesture {
//            withAnimation(.easeIn(duration: 0.3)){
//
//                degrees += 180
//                isFlipped.toggle()
//
//            }
//
//
//        }.navigationViewStyle(StackNavigationViewStyle())
//    }
//}
//
//struct CardKea: View {
//    @State var degrees: Double = 1
//    @State var isFlipped: Bool = true
//    var body: some View {
//        VStack {
//            VStack {
//                Group {
//                    if isFlipped {
//                        PersonsCardView(name: "oli vorderseite", status: "fjdalsöal", image: "kea")
//
//                    } else {
//                        PersonsCardBackView()
//
//                    }
//                }
//
//            }.rotation3DEffect(
//                .degrees(degrees),
//                axis: (x: 0.0, y: 1.0, z: 0.0)
//
//            )
//        }.onTapGesture {
//            withAnimation(.easeIn(duration: 0.3)){
//
//                degrees += 180
//                isFlipped.toggle()
//
//            }
//
//
//        }.navigationViewStyle(StackNavigationViewStyle())
//    }
//}

