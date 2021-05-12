//
//  ContentView.swift
//  WeatherTest
//
//  Created by Daniel Enning on 06.05.21.
//

import SwiftUI

struct ContentView2: View {
    
    @StateObject var viewModel = WeatherViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text(viewModel.title)
                Text(viewModel.main)
                Text("\(viewModel.temp)")
                Text("Hello")

            }
        }.navigationTitle("Wetter")
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
