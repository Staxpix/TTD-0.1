//
//  PersonsCardBackView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.04.21.
//

import SwiftUI

struct PersonsCardBackView: View {
    
    let name: String
     let status: String
     let image: String
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        ZStack {
            
            Image("background-test2")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 350)
                .rotation3DEffect(
                    .degrees(180),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                    
                    )

            VStack(alignment: .center ,spacing: 60) {
                
                Text(name)
                    
                    .font(.title2)
                    .padding(.top, 20)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        
                        )
                
                Image(image)
                    
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                    .frame(maxWidth: 150, maxHeight: 150)
                    .padding(12)
                    .background(Color.ttdWhite)
                    .clipShape(Circle())
                    .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 10, y: 12)
                    
                    .offset(y: -30)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        
                        )

                
                
                Text(status)
                    .frame(maxWidth: 240)
                    .font(.caption)
                    .padding(12)
                    .multilineTextAlignment(.center)
                    .lineLimit(5)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        
                        )
                


            }
 
        }.frame(width: 360, height: 550, alignment: .center)
    }
}

struct PersonsCardBackView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsCardBackView(name: "", status: "", image: "")
    }
}
