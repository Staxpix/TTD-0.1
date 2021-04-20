//
//  MapAnnotationView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 16.04.21.
//

import SwiftUI

struct MapAnnotationView: View {
    
    
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            
            Circle()
                .fill(Color.ttdWhite)
                .frame(width: 40, height: 40, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 3)
                .frame(width: 38, height: 38, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image("ttd-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
                .clipShape(Circle())
        } // ZStack
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        MapAnnotationView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
