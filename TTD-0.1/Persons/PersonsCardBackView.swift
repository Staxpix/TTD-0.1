//
//  PersonsCardBackView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.04.21.
//

import SwiftUI

struct PersonsCardBackView: View {
    
    let name: String
     let description: String
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

            VStack(alignment: .center ,spacing: 30) {
                
                Text(name)
                    
                    .font(.title2)
                    .padding()
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
                    
                    
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        
                        )
                    

                
                
                Text(description)
                    .frame(width: 240, height: 160, alignment: .center)
                    .font(.footnote)
                    .padding(12)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        
                        )
                


            }.frame(width: 360, height: 550, alignment: .center)
            
 
        }.frame(width: 360, height: 550, alignment: .center)
    }
}

struct PersonsCardBackView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsCardBackView(name: "jfdkal kfdaö", description: "Langjähriges Mitglied, Coach und mit Erfahrungen aus allen Formaten gesegnet. Im übrigen toller Motivator, so bekommen TTD'ler vor großen  Wettkämpfen gerne nochmal eine WhatsApp mit besten Wünschen.", image: "oli")
    }
}
