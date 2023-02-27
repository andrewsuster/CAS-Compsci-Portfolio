//
//  ModelData.swift
//  NewRoomFinderApp
//
//  Created by Mark Suster on 12/2/22.
//

import Foundation

func loadData(urlString:String, completion:@escaping([Room]) -> Void){
    let url = URL(string: urlString)
    let request = URLRequest(url: url!)
    let task = URLSession.shared.dataTask(with: request){ data, response, error in
        do {
            if let data = data{
                let dataString = String(data: data, encoding: .utf8)!
                print(dataString)
                
                let parsedJSON = try JSONDecoder().decode([Room].self, from: data)
                completion( parsedJSON)
            }
        }
        catch{
            print(error)
        }
    }
    task.resume()
}

//var rooms: [Room] = load("csvjson.json")
//
//func load<T: Decodable>(_ filename: String) -> T {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//        else {
//            fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }
//}







//
//
//
//
//ZStack{
//    VStack {
//    RoundedRectangle(cornerRadius: 5)
//        .padding(.leading, 9.0)
//        .frame(height: 22.0)
//        .frame(width: 113.0)
//        .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.945)/*@END_MENU_TOKEN@*/)
//    RoundedRectangle(cornerRadius: 5)
//        .padding(.leading, 9.0)
//        .frame(height: 22.0)
//        .frame(width: 153.0)
//        .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//
//
//    ZStack {
//        ZStack {
//            RoundedRectangle(cornerRadius: 5)
//                .frame(width:200, height: 22.0)
//                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                .offset(x: -140, y:27)
//            RoundedRectangle(cornerRadius: 5)
//                .frame(width:200, height: 22.0)
//                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                .offset(x: -30, y:27)
//        }
//        ZStack {
//            RoundedRectangle(cornerRadius: 5)
//                .frame(width:200, height: 22.0)
//                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                .offset(x: -140, y:27)
//            RoundedRectangle(cornerRadius: 5)
//                .frame(width:200, height: 22.0)
//                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                .offset(x: -10, y:27)
//        }
//        .offset(y:45)
//        ZStack {
//            RoundedRectangle(cornerRadius: 5)
//                .frame(width:200, height: 22.0)
//                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                .offset(x: -140, y:27)
//            RoundedRectangle(cornerRadius: 5)
//                .frame(width:200, height: 22.0)
//                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                .offset(x: -30, y:27)
//        }
//        .offset(y:90)
//        ZStack {
//            RoundedRectangle(cornerRadius: 5)
//                .frame(width:200, height: 22.0)
//                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                .offset(x: -140, y:27)
//            RoundedRectangle(cornerRadius: 5)
//                .frame(width:200, height: 22.0)
//                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                .offset(x: -10, y:27)
//        }
//        .offset(y:135)
//    }
//}
