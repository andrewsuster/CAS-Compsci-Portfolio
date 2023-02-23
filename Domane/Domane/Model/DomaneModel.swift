//
//  DomaneModel.swift
//  DomaneModel
//
//  Created by Andrew Suster on 1/19/23.
//

import Foundation





func loadData(enteredtext:String){
    
    let urlEncodedEnteredText = enteredtext.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
    
    let websearch = "https://api.domainsdb.info/v1/domains/search?domain=\(urlEncodedEnteredText)"
    
    let apiURL = URL(string: websearch)!
    let request = URLRequest(url: apiURL)
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        do{
            if let data = data {

                let dataString = String(data:data, encoding: .utf8)!
                print("-------")
                print(dataString)

                let domanes = try JSONDecoder().decode(Domanes.self, from: data)
                print(domanes)
            }
            
        } catch{
            print(error)
        }
    }
    task.resume()
}



func loadDomanes(enteredtext:String, completion: @escaping ([Domain]) -> Void){
    
    let urlEncodedEnteredText = enteredtext.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
    
    let websearch = "https://api.domainsdb.info/v1/domains/search?domain=\(urlEncodedEnteredText)"
    
    let apiURL = URL(string: websearch)!
    let request = URLRequest(url: apiURL)

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        do{
            if let data = data {

                let dataString = String(data:data, encoding: .utf8)!
                print("-------")
                print(dataString)

                let domanes = try JSONDecoder().decode(Domanes.self, from: data)
                print(domanes)

                completion(domanes.domains)
            }
        } catch{
            print(error)
        }
    }
    task.resume()
}



