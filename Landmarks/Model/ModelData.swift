//
//  ModelData.swift
//  Landmarks
//
//  Created by Roman Samborskyi on 26.06.2022.
//

import Foundation
import Combine
//Протокол ObservableObject перевіряє будь які зміни даних та оновлює будь яке view,яке потребує  оновлення
final class ModelData:ObservableObject{
   @Published var landmarks:[Landmark] = load("landmarkData.json")
}

//Масив який приймає дані з json файлу
var landmarks:[Landmark] = load("landmarkData.json")
//Метод який зчитує дані з json файлу
func load<T: Decodable>(_ filename:String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
        
    }catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
