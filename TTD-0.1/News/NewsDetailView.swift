//
//  NewsDetailView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 17.04.21.
//

import SwiftUI

struct NewsDetailView: View {
    
    var headline: String
    var date: String
    var autor: String
    var image: String
    var textPreview: String
    var text: String
    var introTextLink: String
    var linkHomepage: String
    
     var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        ScrollView {
            Group {
                VStack {
                    
                    VStack {
                        Text(headline)
                            .font(.title3)
                            .padding()
                        
                        Image(uiImage: image.load())
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(25)
                            .shadow(color: Color.gray.opacity(0.7), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: -2, y: -2)
                            .padding(.horizontal, 60)
                            
                        
                        HStack {
                            Text(autor)
                            Text(date)
                        }
                        .font(.footnote)
                        .padding()
                        
                        Divider()
                            .padding(.horizontal)
                        
                        Text(text)
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.body)
                            .lineSpacing(10)
                            .padding(22)
                        
                        Text(introTextLink)
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.body)
                            .lineSpacing(10)
                            .padding(12)
                        
                        HStack {
                            
                            Image(systemName: "link")
                                .font(.headline)
                            
                            
                            
                            Link("TTD Homepage", destination: (URL(string: linkHomepage) ?? URL(string: "https://wikipedia.org"))!)
                            
                        
                        }
                        
                        
                        Image("ttd-logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100, alignment: .center)
                            .padding(.bottom, 20)
                    }
                    
                    
                        
                }.animation(Animation.linear(duration: 0.4))
                .animation(Animation.easeOut(duration: 0.5))
            }// Group
            
            .background(Color.ttdWhite)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
            .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
            .padding(22)
            
        }
        
        
        
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView(headline: "Michael Ochmann übernimmt die Leitung des Bereichs Leistungssport", date: "25.12.2020", autor: "Florentine Exner", image: "https://i1.wp.com/triathlon-team-duesseldorf.com/wp-content/uploads/2020/12/Jan-Frodeno-und-Michi-scaled.jpg?resize=1080%2C675&ssl=1", textPreview: "“Triathlon ist auch Mannschaftssport” ...", text: "„Bundesliga!“ Das ist die große Vision des TTDs. Hierzu hat sich vor kurzem unser Leistungssport-Bereich komplett neu aufgestellt, um den Aufbau strukturiert und fokussiert voranzutreiben. Unter der sportlichen Leitung von Heike Hünchen hat ganz neu Michael Ochmann die Leitung des Bereichs Leistungssport übernommen. In unserer Reihe „Dürfen wir vorstellen?“ haben wir Michael ein paar Fragen gestellt, um ein bisschen mehr über ihn als Person als auch seine sportlichen Ziele für den Verein zu erfahren.", introTextLink: "Das ganze Interview könnt ihr hier lesen: ", linkHomepage: "https://triathlon-team-duesseldorf.com/2020/12/triathlon-ist-auch-mannschaftssport/")
    }
}
