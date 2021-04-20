//
//  PersonsCardView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 10.04.21.
//

import SwiftUI

struct PersonsCardView: View {
    
    let name: String
     let status: String
     let image: String
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        
        
        ZStack {
            
            Image("background-test4")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 350)

            VStack(alignment: .center ,spacing: 60) {
                
                Text(name)
                    
                    .font(.title2)
                    .padding(.top, 20)
                
                Image(image)
                    
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                    .frame(maxWidth: 200, maxHeight: 200)
                    .padding(12)
                    .background(Color.ttdWhite)
                    .clipShape(Circle())
                    .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 10, y: 12)

                Text(status)
                    .frame(maxWidth: 240)
                    .font(.caption)
                    .padding(12)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)

            }
 
        }.frame(width: 360, height: 550, alignment: .center)
    }
}

struct PersonsCardView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsCardView(name: "Oli Test Plum", status: "TestSchwimm-Trainer und Ansprechpartner für alle angehende Langdistanzler", image: "oli")
    }
}
