//
//  FAQDisGroupView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 14.05.21.
//

import SwiftUI



struct FAQDisGroupView: View {
    var textLabel: String
    var textContent: String
    var linkFAQText: String
    var linkFAQ : String
    var body: some View {
        DisclosureGroup(
            content: {
                
                VStack(spacing: 20) {
                    Text(textContent)
                        .foregroundColor(.ttdText)
                        
                    
                    Link(linkFAQText, destination: (URL(string: linkFAQ) ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
                    
                    
                }.padding(20)
                .background(Color.ttdWhite)
                
                .cornerRadius(25)
                .padding(40)
                .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
            },
            label:
                
                {
                
                    Text(textLabel)
                .padding(20)
                        .padding(.horizontal, 30)
                .background(Color.ttdWhite)
                .cornerRadius(25)
                .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2) }
        ).multilineTextAlignment(.leading)
        .padding(.horizontal, 30)
        .listStyle(InsetListStyle())
    }
}

struct FAQDisGroupView_Previews: PreviewProvider {
    static var previews: some View {
        FAQDisGroupView(textLabel: "String", textContent: "String", linkFAQText: "String", linkFAQ: "fda")
    }
}
