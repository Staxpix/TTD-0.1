//
//  NewsModelOnline.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 13.04.21.
//

import Foundation

struct NewsOnline: Codable, Identifiable, Hashable {
    var id: String
    var headline: String
    var date: String
    var autor: String
    var image: String
    var textPreview: String
    var text: String
    var introTextLink: String
    var linkHomepage: String
    
}

class apiCall {
    func getNewsOnline(completion:@escaping ([NewsOnline]) -> ()) {
        guard let url = URL(string: "https://gravelventure.de/ttdnews.json") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else {return}
            guard let newsOnline = try? JSONDecoder().decode([NewsOnline].self, from: data) else {fatalError("Hier geht gar nix")}
            print(newsOnline)
            
            DispatchQueue.main.async {
                completion(newsOnline)
            }
        }
        .resume()
    }
}




//class apiCall {
//    func getNewsOnline(completion:@escaping ([NewsOnline]) -> ()) {
//        guard let url = URL(string: "https://gravelventure.de/NewsFBTest%20Kopie.json") else { return }
//        URLSession.shared.dataTask(with: url) { (data, _, _) in
//            let newsOnline = try! JSONDecoder().decode([NewsOnline].self, from: data!)
//            print(newsOnline)
//
//            DispatchQueue.main.async {
//                completion(newsOnline)
//            }
//        }
//        .resume()
//    }
//}
