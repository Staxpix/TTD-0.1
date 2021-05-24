//
//  RandomRunView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import SwiftUI



struct RandomRunView_Previews: PreviewProvider {
    static var previews: some View {
        RandomRunView()
    }
}


struct RandomRunView: View {
    
    // Array für Auswahl im Picker
    let auswahlRun : [String] = ["Easy", "Tempo/Bahn", "Race"]
    
    // Variable "Selection" im Picker für "Run"
    @State private var selectedRun = 1
    
    // Variable Temporäre Auswahl zur Übergabe an Button
    var selectedFromPicker : String = ""
    
    // Variable Temporär Random Training "Run"
    @State var randomRunTempWarmUp : String = ""
    @State var randomRunTempMain : String = ""
    @State var randomRunTempCoolDown : String = ""
    
    // Funktion RandomNumber für Auswahl im Array === RUN EASY
    func tempRandomNumberRunEasy() -> Int {
        let temRanNum = Int.random(in: 0..<allEasyRuns.count)
        return temRanNum }
    
    // Funktion RandomNumber für Auswahl im Array === RUN MEDIUM
    func tempRandomNumberRunMedium() -> Int {
        let temRanNum = Int.random(in: 0..<allMediumRuns.count)
        return temRanNum }
    
    // Funktion RandomNumber für Auswahl im Array === RUN HARD
    func tempRandomNumberRunHard() -> Int {
        let temRanNum = Int.random(in: 0..<allHardRuns.count)
        return temRanNum }
     
    var body: some View {
        
        
        
        VStack {
            VStack(spacing: 10) {
                
                Text("Lauf-Training")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.ttdText)
                    .padding(.bottom, 20)
                    .padding(.top, 14)
                
                
                
                Picker(selection: $selectedRun, label: Text("Picker"), content: {
                    ForEach(0..<auswahlRun.count) {
                        Text(auswahlRun[$0])
                    }
                }).pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                .padding(.bottom)
                
                //                    Text("\(auswahlRun[selectedRun])")
                
                let selectedFromPicker = auswahlRun[selectedRun]
                
                Button(action: {
                    
                    if selectedFromPicker == "Easy" {
                        let temRanNum = tempRandomNumberRunEasy()
                        randomRunTempWarmUp = "\(allEasyRuns[temRanNum].warmUp)"
                        randomRunTempMain = "\(allEasyRuns[temRanNum].main)"
                        randomRunTempCoolDown = "\(allEasyRuns[temRanNum].coolDown)"
                        
                    } else if selectedFromPicker == "Tempo/Bahn" {
                        let temRanNum = tempRandomNumberRunMedium()
                        randomRunTempWarmUp = "\(allMediumRuns[temRanNum].warmUp)"
                        randomRunTempMain = "\(allMediumRuns[temRanNum].main)"
                        randomRunTempCoolDown = "\(allMediumRuns[temRanNum].coolDown)"
                    } else if selectedFromPicker == "Race" {
                        let temRanNum = tempRandomNumberRunHard()
                        randomRunTempWarmUp = "\(allHardRuns[temRanNum].warmUp)"
                        randomRunTempMain = "\(allHardRuns[temRanNum].main)"
                        randomRunTempCoolDown = "\(allHardRuns[temRanNum].coolDown)"
                    }
                    
                }, label: {
                    HStack {
                        Image("ttd-logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60, alignment: .center)
                        Text("Training erstellen")
                            .font(.body)
                            .bold()
                            .padding(.horizontal)
                            .multilineTextAlignment(.center)
                        Image("ttd-logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60, alignment: .center)
                        
                    }.frame(width: 280, height: 80, alignment: .center)
                    .padding(2)
                    .background(Color.ttdWhite)
                    .cornerRadius(25)
                    .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                })
                
                VStack(alignment: .center, spacing: 22) {
                    
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .center){
                            
                            VStack(alignment: .center, spacing: 40){
                                VStack(spacing: 6){
                                    Text("Warm-Up:")
                                        .bold()
                                    Text("\(randomRunTempWarmUp)")
                                        .fontWeight(.medium)
                                }.multilineTextAlignment(.center)
                                
                                VStack(spacing: 6){
                                    Text("Main:")
                                        .bold()
                                    Text("\(randomRunTempMain)")
                                        .fontWeight(.medium)
                                }.multilineTextAlignment(.center)
                                
                                
                                VStack(spacing: 6){
                                    Text("Cool-Down:")
                                        .bold()
                                    Text("\(randomRunTempCoolDown)")
                                        .fontWeight(.medium)
                                }.multilineTextAlignment(.center)
                            }.fixedSize(horizontal: false, vertical: true)
                            
                        }
                        .frame(width: 300, alignment: .center)
                        .animation(.interactiveSpring(response: 1, dampingFraction: 1, blendDuration: 3))
                    }.frame(width: 300, height: 240, alignment: .center)
                }
                .padding(50)
                .font(.callout)
                .foregroundColor(.ttdText)
                .multilineTextAlignment(.leading)
                .frame(width: 310, height: 300, alignment: .center)
                .background(Color.ttdWhite)
                .cornerRadius(25)
                .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                .padding()
                
                Text("Viel Spaß!")
                    .bold()
                    .padding(.top, 14)
                    .padding(.bottom, 10)
                
                DisclosureGroup(
                    content: { Text("Bei Easy-Läufen ist es wirklich wichtig, dass sie 'Easy' sind. Vor allem an Steigungen sollte man aufpassen (am besten vermeiden!), generell eher langsamer laufen, als man vielleicht könnte. Die Regeneration steht hier im Vordergrund. Gerne ein bisschen Technik oder Stabi einbauen. Die %-Angaben in den Trainings beziehen sich immer auf euer maximales Tempo, das ihr über 1km halten könnt. Die Angaben sind immer Richtwerte. An guten Tagen legt man ein paar % drauf. An schlecht entsprechend weniger oder verkürzt die Einheiten. Das eigene Gefühl steht über jedem Trainingsplan :-)")
                        .font(.footnote)
                        .padding()
                    },
                    label: { Text("Info") }
                ).padding(.horizontal)
                .padding(.bottom, 14)
                .frame(width: 280, alignment: .center)
            }
            
            
            // Swim
            
            
            
            
            
            
            
        } // 1. VStack
        .background(Color.ttdWhite)
        .cornerRadius(25)
        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
        .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
        .padding(40)
        .padding(.leading, 25)
        
        
        
    }
}

