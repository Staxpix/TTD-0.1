//
//  RandomWorkout.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 03.05.21.
//

import SwiftUI

struct RandomWorkout: View {
    
    // Sammlung EASY
    var allEasyRuns : [EasyRunTrainings] = [
    
    EasyRunTrainings(warmUp: "5 Minuten locker einlaufen", main: "5km GA1", coolDown: "10 min locker auslaufen", intensity: IntensityEasyRunTrainings(short: "2 Minuten", long: "5 Minuten")),
        
    EasyRunTrainings(warmUp: "10 Minuten locker einlaufen", main: "10km GA1", coolDown: "15 min locker auslaufen", intensity: IntensityEasyRunTrainings(short: "4 Minuten", long: "10 Minuten")),
        
    EasyRunTrainings(warmUp: "15 Minuten locker einlaufen", main: "15km GA1", coolDown: "20 min locker auslaufen", intensity: IntensityEasyRunTrainings(short: "8 Minuten", long: "14 Minuten"))]
    
    // Sammlung Medium
    var allMediumRuns : [MediumRunTrainings] = [
    
        MediumRunTrainings(warmUp: "5 Minuten Lauf-ABC", main: "5x400m", coolDown: "5 Minunten auslaufen", intensity: IntensityMediumRunTrainings(short: "1 Minute", long: "2 Minuten")),
        
        MediumRunTrainings(warmUp: "10 Minuten Lauf-ABC", main: "8x400m", coolDown: "10 Minunten auslaufen", intensity: IntensityMediumRunTrainings(short: "2 Minute", long: "4 Minuten")),
        
        MediumRunTrainings(warmUp: "15 Minuten Lauf-ABC", main: "10x400m", coolDown: "15 Minunten auslaufen", intensity: IntensityMediumRunTrainings(short: "3 Minute", long: "6 Minuten"))]
    
    // Array für Auswahl im Picker
    let auswahlRun : [String] = ["Easy", "Medium", "Hard"]
    
    // Variable "Selection" im Picker für "Run"
    @State private var selectedRun = 1
    
    // Variable Temporäre Auswahl zur Übergabe an Button
    var selectedFromPicker : String = ""
    
    // Variable Temporär Random Training "Run"
    @State var randomRunTempWarmUp : String = ""
    @State var randomRunTempMain : String = ""
    @State var randomRunTempCoolDown : String = ""
    
    // Funktion RandomNumber für Auswahl im Array
    func tempRandomNumber() -> Int {
        let temRanNum = Int.random(in: 0..<allEasyRuns.count)
        return temRanNum
    }
    
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        ScrollView {
            VStack {
                VStack(spacing: 20) {
                    Picker(selection: $selectedRun, label: Text("Picker"), content: {
                        ForEach(0..<auswahlRun.count) {
                            Text(auswahlRun[$0])
                        }
                    }).pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal)
                    
                    Text("\(auswahlRun[selectedRun])")
                    
                    let selectedFromPicker = auswahlRun[selectedRun]
                    
                    Button(action: {
                        
                        if selectedFromPicker == "Easy" {
                            let temRanNum = tempRandomNumber()
                            randomRunTempWarmUp = "\(allEasyRuns[temRanNum].warmUp)"
                            randomRunTempMain = "\(allEasyRuns[temRanNum].main)"
                            randomRunTempCoolDown = "\(allEasyRuns[temRanNum].coolDown)"
                        } else if selectedFromPicker == "Medium" {
                            let temRanNum = tempRandomNumber()
                            randomRunTempWarmUp = "\(allMediumRuns[temRanNum].warmUp)"
                            randomRunTempMain = "\(allMediumRuns[temRanNum].main)"
                            randomRunTempCoolDown = "\(allMediumRuns[temRanNum].coolDown)"
                        }
                        
                    }, label: {
                        VStack {
                            
                            Text("Zufälliges Training erstellen")
                                .bold()
                                .padding(.top, 14)
                            Image("ttd-logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                        }
                    })
                    
                    VStack(spacing: 12) {
                        Text("Warm-Up: \n \(randomRunTempWarmUp)")
                            .fontWeight(.medium)
                        Text("Main: \n \(randomRunTempMain)")
                            .fontWeight(.medium)
                        Text("Cool-Down \n \(randomRunTempCoolDown)")
                            .fontWeight(.medium)
                    }
                    .font(.callout)
                    .foregroundColor(.ttdText)
                    .multilineTextAlignment(.center)
                    .frame(width: 250, height: 300, alignment: .center)
                    .background(Color.ttdWhite)
                    .cornerRadius(25)
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                    .padding()
                    
                    Text("Viel Spaß!")
                        .bold()
                        .padding(.top, 14)
                    
                    
                }
            } // 1. VStack
            .padding(50)
            
            
            //// Test
            VStack {
                VStack(spacing: 20) {
                    Picker(selection: $selectedRun, label: Text("Picker"), content: {
                        ForEach(0..<auswahlRun.count) {
                            Text(auswahlRun[$0])
                        }
                    }).pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal)
                    
                    Text("\(auswahlRun[selectedRun])")
                    
                    let selectedFromPicker = auswahlRun[selectedRun]
                    
                    Button(action: {
                        
                        if selectedFromPicker == "Easy" {
                            let temRanNum = tempRandomNumber()
                            randomRunTempWarmUp = "\(allEasyRuns[temRanNum].warmUp)"
                            randomRunTempMain = "\(allEasyRuns[temRanNum].main)"
                            randomRunTempCoolDown = "\(allEasyRuns[temRanNum].coolDown)"
                        } else if selectedFromPicker == "Medium" {
                            let temRanNum = tempRandomNumber()
                            randomRunTempWarmUp = "\(allMediumRuns[temRanNum].warmUp)"
                            randomRunTempMain = "\(allMediumRuns[temRanNum].main)"
                            randomRunTempCoolDown = "\(allMediumRuns[temRanNum].coolDown)"
                        }
                        
                    }, label: {
                        VStack {
                            
                            Text("Zufälliges Training erstellen")
                                .bold()
                                .padding(.top, 14)
                            Image("ttd-logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                        }
                    })
                    
                    VStack(spacing: 12) {
                        Text("Warm-Up: \n \(randomRunTempWarmUp)")
                            .fontWeight(.medium)
                        Text("Main: \n \(randomRunTempMain)")
                            .fontWeight(.medium)
                        Text("Cool-Down \n \(randomRunTempCoolDown)")
                            .fontWeight(.medium)
                    }
                    .font(.callout)
                    .foregroundColor(.ttdText)
                    .multilineTextAlignment(.center)
                    .frame(width: 250, height: 300, alignment: .center)
                    .background(Color.ttdWhite)
                    .cornerRadius(25)
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.gray.opacity(0.1), radius: 10, x: -2, y: -2)
                    .padding()
                    
                    Text("Viel Spaß!")
                        .bold()
                        .padding(.top, 14)
                    
                    
                }
            } // 1. VStack
            .padding(50)
            
            
        }
        
        
        
    }
}















// Preview
struct RandomWorkout_Previews: PreviewProvider {
    static var previews: some View {
        RandomWorkout()
    }
}

// EASY
struct EasyRunTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityEasyRunTrainings(short: "", long: "")
    
    
    
}

struct IntensityEasyRunTrainings {
    var short : String
    var long : String
}
// MEDIUM
struct MediumRunTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityMediumRunTrainings(short: "", long: "")
    
    
    
}

struct IntensityMediumRunTrainings {
    var short : String
    var long : String
}
