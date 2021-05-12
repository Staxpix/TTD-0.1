//
//  SpotsImageView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 11.05.21.
//

import SwiftUI

struct SpotsImageView: View {
    
    
    var img : String
    
    
    
    var body: some View {
        Image(img)
            .resizable()
            .scaledToFit()
            .background(Color.ttdWhite)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .shadow(color: Color.gray.opacity(0.5), radius: 10, x: 10, y: 10)
            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: -2, y: -2)
            .padding(22)
    }
}

//struct SpotsImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        SpotsImageView()
//    }
//}
