//
//  HomeScreen2.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 24.04.21.
//

import SwiftUI

struct HomeScreen2: View {
    
    private var screenSize = UIScreen.main.bounds
    
    @State private var isVisible = false
    @State private var isVisible2 = false
    @State var newsOnline : [NewsOnline] = []
    var durationTime: Double = 3
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                
                VStack(spacing: 60) {
                    Image("ttd-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: screenSize.width * 0.7)
                        .background(
                            Color.ttdWhite
                 
                        )
                        .cornerRadius(25)
                        .clipShape(Circle())
                        .shadow(color: Color.gray.opacity(isVisible ? 0.3 : 0.0), radius: 10, x: 15, y: 10)
                       
                    Image("ttd-schriftzug")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: screenSize.width * 0.5, maxHeight: screenSize.height * 0.1)
                        .padding(.horizontal, 28)
                        .background(
                            Color.ttdWhite
                 
                        )
                        .cornerRadius(25)
                        .clipShape(RoundedRectangle(cornerRadius:25))
                        .shadow(color: Color.gray.opacity(isVisible ? 0.3 : 0.0), radius: 10, x: 15, y: 10)
                        
                    // Navigation
                    VStack(spacing: 50) {
                        HStack(spacing: 28) {
                            NavigationLink(
                                destination: SpotsList(),
                                label: {
                                    VStack {
                                        Image(systemName: "mappin.circle.fill")
                                        Text("Spots Map")
                                    }
                            })
                                .animation(.easeIn(duration: durationTime * 2/6))
                            
                            // Navigation
                            NavigationLink(
                                destination: SpotsList(),
                                label: {
                                    VStack {
                                        Image(systemName: "mappin.circle.fill")
                                        Text("Spots Map")
                                    }
                                })
                                .animation(.easeIn(duration: durationTime * 2/6))
                            
                            
                            // Navigation
                            NavigationLink(
                                destination: SpotsList(),
                                label: {
                                    VStack {
                                        Image(systemName: "mappin.circle.fill")
                                        Text("Spots Map")
                                    }
                                })
                                .animation(.easeIn(duration: durationTime * 2/6))
                            
                            
                        }
                        
                        // Navigation
                        HStack(spacing: 28) {
                            NavigationLink(
                                destination: SpotsList(),
                                label: {
                                    VStack {
                                        Image(systemName: "mappin.circle.fill")
                                        Text("Spots Map")
                                    }
                            })
                                .animation(.easeIn(duration: durationTime * 3/6))
                            
                            // Navigation
                            NavigationLink(
                                destination: SpotsList(),
                                label: {
                                    VStack {
                                        Image(systemName: "mappin.circle.fill")
                                        Text("Spots Map")
                                    }
                                })
                                .animation(.easeIn(duration: durationTime * 3/6))
                            
                            // Navigation
                            NavigationLink(
                                destination: SpotsList(),
                                label: {
                                    VStack {
                                        Image(systemName: "mappin.circle.fill")
                                        Text("Spots Map")
                                    }
                                })
                                .animation(.easeIn(duration: durationTime * 3/6))
                            
                        }
                    }.padding(.bottom, 60)
                    
               
                }
                .scaleEffect(isVisible ? 1.0 : 0.2)
                .opacity(isVisible ? 1.0 : 0.1)
                .onAppear(perform: {
                    withAnimation(.easeIn(duration: 1.5)) {
                        self.isVisible = true}})
                .onTapGesture {
                    withAnimation(.easeOut(duration: 0.5)) {
                        self.isVisible.toggle()
                    }
                }
                .padding()
                
               
                
                
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
}
    
}

struct HomeScreen2_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen2()
    }
}
