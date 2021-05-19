//
//  RandomWorkout.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 03.05.21.
//

import SwiftUI

struct RandomWorkout: View {
    
   
    
    
    var body: some View {
        
        GeometryReader{ geometry in
            
            ScrollView(showsIndicators: false) {
                
                ScrollView(.horizontal, showsIndicators : false) {
                    VStack {
                        Spacer()
                        
                      
                        
                        HStack(alignment: .center) {
//                            Spacer()
                            RandomRunView()
                            
                            RandomSwimView()
                            
                            RandomBikeView()
//                            Spacer()
                            
                        }
                        .padding(.leading, -25)
                        Spacer()
                    }
                    
                    
                }.frame(minHeight: geometry.size.height)
                .frame(width: geometry.size.width)
            }
            
        }
        
        
    }
}

// Preview
struct RandomWorkout_Previews: PreviewProvider {
    static var previews: some View {
        RandomWorkout()
    }
}


