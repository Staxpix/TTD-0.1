//
//  HomeScreen.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 10.04.21.
//

import SwiftUI

struct HomeScreen: View {
    
    @StateObject var viewModel = WeatherViewModel()
    
    
    
    private var screenSize = UIScreen.main.bounds
    
    @State private var isVisible = false
    @State private var isVisible2 = false
    @State var newsOnline : [NewsOnline] = []
    
    var body: some View {
        
      
        ZStack {
            
            
//            VStack {
//
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: screenSize.width * 0.9, height: screenSize.height * 0.7, alignment: .center)
//                    .foregroundColor(Color.ttdWhite)
//                    .shadow(color: Color.gray.opacity(isVisible2 ? 0.3 : 0.0), radius: 16, x: 10, y: 10)
//                    .shadow(color: Color.gray.opacity(isVisible2 ? 0.1 : 0.0), radius: 10, x: -10, y: -10)
//            }.scaleEffect(isVisible2 ? 1.0 : 0.2)
//            .opacity(isVisible2 ? 1.0 : 0.1)
//            .onAppear(perform: {
//                withAnimation(.easeOut(duration: 1.0)) {
//                    self.isVisible2.toggle()
//                }
//            })
//            .onTapGesture {
//                withAnimation(.easeOut(duration: 1.0)) {
//                    self.isVisible2.toggle()
//                }
//            }
            
            
            VStack(spacing: 60) {
                Image("placeholder-2")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: screenSize.width * 0.7)
                    .background(
                        Color.ttdWhite
             
                    )
                    .cornerRadius(25)
                    .clipShape(Circle())
                    .rotation3DEffect(
                                            .degrees(10),
                                            axis: (x: -1.0, y: -1.0, z: 0.0)
                                        )
                    .shadow(color: Color.gray.opacity(isVisible ? 0.3 : 0.0), radius: 10, x: 15, y: 10)
                    .shadow(color: Color.gray.opacity(isVisible ? 0.08 : 0.0), radius: 10, x: -15, y: -10)
                   
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
                    .rotation3DEffect(
                                            .degrees(10),
                                            axis: (x: 1.0, y: 1.0, z: 0.0)
                                        )
                    .shadow(color: Color.gray.opacity(isVisible ? 0.3 : 0.0), radius: 10, x: 15, y: 10)
                    .shadow(color: Color.gray.opacity(isVisible ? 0.08 : 0.0), radius: 10, x: -15, y: -10)
                
                VStack(alignment: .center, spacing: 22) {
                    Text(viewModel.title)
                        .foregroundColor(.ttdText)
                        .font(.headline)
                    
                    Text(viewModel.description)
                        .foregroundColor(.ttdText)
                    
                    HStack(alignment: .center, spacing: 22){
                        VStack(alignment: .leading, spacing: 12) {
//                            Text("Wetter: \(viewModel.main)")
                            Text("Temp: \(Int(viewModel.temp)) ??Grad")
                                .foregroundColor(.ttdText)
                            Text("Gef??hlt: \(Int(viewModel.feelsLike)) ??Grad")
                                .foregroundColor(.ttdText)
                        }.multilineTextAlignment(.leading)
                        
                        VStack(alignment: .leading, spacing: 12){
//                            Text(viewModel.description)
                        
                            Text("Wind: \(Int(1.6 * viewModel.wind)) km/h")
                                .foregroundColor(.ttdText)
                                .multilineTextAlignment(.leading)
                            
                            HStack{
                                Text("Richtung: ")
                                    .foregroundColor(.ttdText)
                                Image(systemName: "shift.fill")
                                    .foregroundColor(.ttdText)
                                    .rotationEffect(.degrees((Double(360 - viewModel.deg))))
                            }.multilineTextAlignment(.leading)
                            
                        }.multilineTextAlignment(.leading)
                        
                    }
       
                    
                    
                }.multilineTextAlignment(.leading)
                
                
           
            }
            .scaleEffect(isVisible ? 1.0 : 0.2)
            .opacity(isVisible ? 1.0 : 0.1)
            .onAppear(perform: {
                withAnimation(.easeIn(duration: 1.5)) {
                    self.isVisible = true
                
                    
                }
            })
            
            
            .onTapGesture {
                withAnimation(.easeOut(duration: 0.5)) {
                    self.isVisible.toggle()
                }
            }
            .padding()
        }
}
    
    
}
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

//
//
//
//ZStack {
//    // GUTE FARBE F??R TTD
//    RoundedRectangle(cornerRadius: 25.0)
//        .fill(Color.init(.sRGB, red: 245, green: 255, blue: 250, opacity: 1))
//        .frame(maxWidth: screenSize.width * 0.8, maxHeight: screenSize.height * 0.6)
//        .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
//        .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
//    VStack {
//
//        Image("ttd-logo")
//            .resizable()
//            .scaledToFit()
//            .frame(maxWidth: screenSize.width * 0.5)
//            .background(Color(.sRGB, red: 245, green: 255, blue: 250, opacity: 1))
//            .clipShape(Circle())
//
//
//            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
//            .padding(.bottom, 40)
//
//
//        Image("ttd-schriftzug")
//            .resizable()
//            .scaledToFit()
//            .frame(maxWidth: screenSize.width * 0.4)
//            .padding(.horizontal)
//            .background(Color(.sRGB, red: 245, green: 255, blue: 250, opacity: 1))
//
//            .clipShape(RoundedRectangle(cornerRadius: 25.0))
//
//
//
//            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
//    }
//
//}
