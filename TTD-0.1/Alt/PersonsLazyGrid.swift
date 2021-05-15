//
//  PersonsLazyGrid.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 28.04.21.
//

import SwiftUI

struct PersonsLazyGrid: View {
    
    let persons: [Persons] = Bundle.main.decode("Persons.json")
    
    private let gridItems = [GridItem(.flexible(minimum: 360, maximum: 380)), GridItem(.flexible(minimum: 360, maximum: 380)), GridItem(.flexible(minimum: 360, maximum: 380))]
    
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal) {
                
                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: 16, content: {
                        ForEach(persons, id: \.id) { persons in
                            PersonFlipCard(name: persons.name, status: persons.status, description: persons.description, image: persons.image)
                        }.padding(.leading, 30)
                    })
                }
            }
            .navigationTitle("Das TTD-Team")
            .navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct PersonsLazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        PersonsLazyGrid()
    }
}
