//
//  ViewModel.swift
//  WeatherTest
//
//  Created by Daniel Enning on 06.05.21.
//

import Foundation

// Data needed bei the View

class WeatherViewModel: ObservableObject {
    @Published var title : String = ""
    @Published var main : String = ""
    @Published var temp : Double = 0.0
    @Published var timezone : Int = 10
    @Published var feelsLike : Double = 0.0
    @Published var description: String = ""
    @Published var wind: Double = 0.0
    @Published var deg: Int = 1
    
    
    init() {
        fetchWeather()
    }
    
    func fetchWeather() {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=dusseldorf&units=metric&lang=de&appid=6f6faf4beb49ceb53861350d283ffc3b")
        
        else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let model = try JSONDecoder().decode(WeatherModel.self, from: data)
            
                DispatchQueue.main.async {
                    self.title = model.name
                    self.main = model.weather.first!.main
                    self.temp = model.main.temp
                    self.feelsLike = model.main.feelsLike
                    self.description = model.weather.first!.weatherDescription
                    self.wind = model.wind.speed
                    self.deg = model.wind.deg
                }
            
            
            } catch {
                print("Fail")
            }
            
        }
        task.resume()
    }
    
}






////
//6f6faf4beb49ceb53861350d283ffc3b
//
//be446352389e6d4705730e6498b40060
////

//
//"http://api.openweathermap.org/data/2.5/weather?q=Düsseldorf&appid=6f6faf4beb49ceb53861350d283ffc3b"
