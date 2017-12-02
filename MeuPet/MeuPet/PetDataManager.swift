//
//  PetDataManager.swift
//  MeuPet
//
//  Created by giullianogp on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import Alamofire

protocol AsyncDelegate {
    func done()
}


class PetDataManager: NSObject {
    
    private var page: Int = 1
    
    var pets = [Pet]()
    
    var delegate: AsyncDelegate?
    
    override init() {
        super.init()
        
        getPetsAPI()
    }
    
    
    func getPetsAPI(){
//        Alamofire.request("http://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=ddca64bc1ff408324eb4f1d53b9ae458&page=\(page)").responseJSON { response in
//            print("Request: \(String(describing: response.request))")   // original url request
//            print("Response: \(String(describing: response.response))") // http url response
//            print("Result: \(response.result)")                         // response serialization result
//            
//            if let json = response.result.value  as? [String: Any],
//                let results = json["results"] as? [[String: Any]] {
//                
//                for data in results {
//                    self.filmes.append(Filme(data: data))
//                }
//                
//                print("JSON: \(self.filmes)")
//            }
//            
//            self.delegate?.done()
//            
//        }
        
        for index in 1...3 {
            
           let pet = Pet()
            pet.Nome  = "Pet\(index)"
            pet.Nascimento = "02/03/2015"
            pet.ImageUrl = "http://tudosobrecachorros.com.br/wp-content/uploads/fases-da-vida-cachorro-5.jpg"
            self.pets.append(pet)
        }
        
    }
    
    
    func getPet(at index: Int) -> Pet {
        print("Tamanho: \(self.pets.count) Index: \(index)")
        if (index == self.pets.count - 1) {
            page = page + 1
            getPetsAPI()
        }
        
        return self.pets[index]
    }
}
