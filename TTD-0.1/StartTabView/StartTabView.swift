//
//  StartTabView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 10.04.21.
//

import SwiftUI

struct StartTabView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color.ttdWhite)
       }
    
    var body: some View {
        
        
        
        TabView {
            HomeScreen()
                .tabItem { VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                } }

            NewsListQuer()
                .tabItem { VStack {
                    Image(systemName: "newspaper.fill")
                    Text("News")
                } }

            PersonsViewFlipOverview()
                .tabItem { VStack {
                    Image(systemName: "person.fill")
                    Text("Trainer")
                } }
            
            Trainingszeiten()
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("Trainingszeiten")
                }

            PenilKit1()
                .tabItem { VStack {
                    Image(systemName: "pencil.circle.fill")
                    Text("Notizen")
                } }
//
//            LoginView()
//                .tabItem { VStack {
//                    Image(systemName: "pencil.circle.fill")
//                    Text("Planner")
//                } }
//
//            test1()
//                .tabItem { VStack {
//                    Image(systemName: "calendar.circle.fill")
//                    Text("Trainingszeiten")
//                } }
//
//            test1()
//                .tabItem { VStack {
//                    Image(systemName: "note.text")
//                    Text("Notizen")
//                } }
        }
        
        .accentColor(.black)
    }
}

struct StartTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartTabView()
            StartTabView()
        }
    }
}
