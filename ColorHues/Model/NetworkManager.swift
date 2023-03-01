
//  NetworkCall.swift
//  ColorHues
//
//  Created by Ethan Gonsalves on 2023-02-27.
//

import UIKit
struct Pallet: Decodable{
    let hex_palette: [String]
    
}
struct NetworkManager: Codable {
    
    
    
    func callAPI() {
        guard let url = URL(string: "https://onesimpleapi.com/api/color?token=2cIL5Uska9A6DOJli6yq7RG8ScFKUlmbGS1bMlbk&output=json&text=Avril%20Lavi") else { return }
       
        let dataTask = URLSession.shared.dataTask(with: url) { data, _, err in
            
            if let err = err {
                print("err was found \(err)")
            }
                guard let jsonData = data else { return }
                let decoder = JSONDecoder()
                
                do {
                    let docodedData = try decoder.decode(Pallet.self, from: jsonData)
                    print(docodedData)
                } catch {
                    print("err was decoded found")
                }
                
                
            
        }
        
        dataTask.resume()
    }
    
    
}




