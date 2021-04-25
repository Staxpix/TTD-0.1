//
//  PersonsOverview.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 10.04.21.
//

import SwiftUI

struct PersonsOverview: View {
    
    private var screenSize = UIScreen.main.bounds
    
    let persons: [Persons] = Bundle.main.decode("Persons.json")
    
    var body: some View {
        
        
        
        NavigationView {
            
            VStack {
                
                ScrollView(showsIndicators: false) {
                    
                    VStack {
                        
                        Image("ttd-schriftzug")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 80, alignment: .center)
                            .offset(y: 0)
                            .animation(Animation.easeInOut(duration: 0.6).delay(0.2))
                        
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 36) {
                                PersonsCardView(name: persons[1].name, status: persons[1].status, image: persons[1].image)
                                    .onTapGesture {
                                        
                                    }
                                
                                
                                PersonsCardView(name: persons[1].name, status: persons[1].status, image: persons[1].image)
                                
                                PersonsCardView(name: persons[1].name, status: persons[1].status, image: persons[1].image)
                            }
                            .padding(24)
                        }
                        
                    }
                    
                    VStack {
                        
                        Image("ttd-schriftzug")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 80, alignment: .center)
                            .offset(y: 0)
                            .animation(Animation.easeInOut(duration: 0.6).delay(0.2))
                        
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 36) {
                                PersonsCardView(name: persons[1].name, status: persons[1].status, image: persons[1].image)
                                
                                
                                PersonsCardView(name: persons[1].name, status: persons[1].status, image: persons[1].image)
                                
                                PersonsCardView(name: persons[1].name, status: persons[1].status, image: persons[1].image)
                            }
                            .padding(24)
                        }
                        
                    }
                    
                    VStack {
                        
                        Image("ttd-schriftzug")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 80, alignment: .center)
                            .offset(y: 0)
                            .animation(Animation.easeInOut(duration: 0.6).delay(0.2))
                        
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 36) {
                                PersonsCardView(name: persons[1].name, status: persons[1].status, image: persons[1].image)
                                
                                
                                PersonsCardView(name: persons[1].name, status: persons[1].status, image: persons[1].image)
                                
                                PersonsCardView(name: persons[1].name, status: persons[1].status, image: persons[1].image)
                            }
                            .padding(24)
                        } 
                        
                    }
                }.animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 1))
                .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 3))
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct PersonsOverview_Previews: PreviewProvider {
    static var previews: some View {
        PersonsOverview()
    }
}
