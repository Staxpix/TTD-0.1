////
////  WorkOutTest.swift
////  TTD-0.1
////
////  Created by Daniel Enning on 28.04.21.
////
//
//import SwiftUI
//
//struct WorkOutTest: View {
//    
//    
//
//    var interestingNumbers = ["primes": ["2", "3", "5", "7", "11", "13", "17"],
//                              "triangular": ["1", "3", "6", "10", "15", "21", "28"],
//                              "hexagonal": ["1", "6", "15", "28", "45", "66", "91"]]
//
//    
//    
//    
////    let runEasy : [RunEasy] = Bundle.main.decode("EasyRun.json")
//    
//    let auswahlRun : [String] = ["Easy", "Medium", "Hard"]
//    let auswahlBike : [String] = ["EasyBike", "MediumBike", "HardBike"]
//    
//    @State private var selectRun = 1
//    @State private var selectBike = 1
//    @State var random = Int.random(in: 0...2)
//    @State var xy : String = ""
//    @State var fff : String = ""
//    
//    
//    var allEasy : [EasyRun] = [
//
//    EasyRun(warmUp: "a", main: "aa", coolDown: "aaa", intensity: Intensity(short: "10", long: "20")),
//
//    EasyRun(warmUp: "b", main: "bb", coolDown: "bbb", intensity: Intensity(short: "b10", long: "b20"))
//    ]
//    
//    var body: some View {
//        
//        
//        
//        ScrollView {
//            VStack {
//                VStack {
//                    
//                    Button(action: {
//                        fff = "\(allEasy.randomElement()!.coolDown)"
//                    }, label: {
//                        Text("Random")
//                    })
//                    
//                    Text(fff)
//                    Text("\(interestingNumbers["primes"]!.randomElement()!)")
//                    
//                    
//                    
//                    
//                    
//                    
//                    
//                    
//                    
//                }
//                
//                
//                VStack(spacing: 40) {
//                    Picker(selection: $selectRun, label: Text(""), content: {
//                        ForEach(0..<auswahlRun.count) {
//                            Text(auswahlRun[$0])
//                            
//                        }
//                    })
//                    .pickerStyle(SegmentedPickerStyle())
//                    Text("\(auswahlRun[selectRun])")
//                    
//                    var selected = auswahlRun[selectRun]
//                    
//                    Button(action: {
//                        if selected == "Easy" {
////                            xy = "\(runEasy[.random(in: 0..<auswahlRun.count)].workoutName)"
//                                
//                        }
//                    }, label: {
//                        Text("Button")
//                    })
//                    
//                    Text(xy)
//                    
//                    
//        //            if selected == "Easy" {
//        //                Text("\(runEasy[.random(in: 0..<auswahlRun.count)].workoutName)")
//        //                    .multilineTextAlignment(.center)
//        //                    .padding()
//        //            }
//                    
//                    /////
//                    
//                    Picker(selection: $selectBike, label: Text(""), content: {
//                        ForEach(0..<auswahlBike.count) {
//                            Text(auswahlBike[$0])
//                            
//                        }
//                    })
//                    .pickerStyle(SegmentedPickerStyle())
//                    Text("\(auswahlBike[selectBike])")
//                    
//                    var selectedBike = auswahlBike[selectBike]
//                    
//                    if selectedBike == "MediumBike" {
//                        
////                        Text("\(runEasy[.random(in: 0..<auswahlRun.count)].workoutName)")
////                            .multilineTextAlignment(.center)
////                            .padding()
//                        
//                    }
//                    
//                    
//                    
//                }.frame(maxHeight: 400)
//            }
//        }
//        }
//        
//        
//}
//
//struct EasyRun {
//    var warmUp : String
//    var main : String
//    var coolDown : String
//    
//    var intensity = Intensity(short: "", long: "")
//    
//    
//    
//}
//
//struct Intensity {
//    var short : String
//    var long : String
//}
//
//
//
//
//
//
//
//
//
//
//
//
//struct WorkOutTest_Previews: PreviewProvider {
//    static var previews: some View {
//        WorkOutTest()
//    }
//}
//
////var auswahl : String = ""
////var interestingNumbers = ["primes": [2, 3, 5, 7, 11, 13, 17],
////                          "triangular": [1, 3, 6, 10, 15, 21, 28],
////                          "hexagonal": [1, 6, 15, 28, 45, 66, 91]]
////
////
////print(interestingNumbers["primes"]!.randomElement()!)
////
////auswahl = "hexagonal"
////if auswahl == "hexagonal" {
////print(interestingNumbers[auswahl]!.randomElement()!)
////}
