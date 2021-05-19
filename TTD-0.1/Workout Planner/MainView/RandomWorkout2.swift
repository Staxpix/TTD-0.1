//
//  RandomWorkout2.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 16.05.21.
//

import SwiftUI

struct RandomWorkout2: View {
    var body: some View {
        
        GeometryReader{ geometry in
            
            ScrollView(showsIndicators : false){
            
            ScrollView(.horizontal, showsIndicators : false) {
                
                VStack{
                    HStack{
                        
                            RandomRunView()
                        
                        
                        
                        
                        RandomSwimView()
                        
                        RandomBikeView()
                    }.offset(x: -30)
                }.frame(minHeight: geometry.size.height)
                
                
                
            }
            
            }
            
            
        }
        
        
        
        
    }
}

struct RandomWorkout2_Previews: PreviewProvider {
    static var previews: some View {
        RandomWorkout2()
    }
}
