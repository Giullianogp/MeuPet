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
        Alamofire.request("https://meupetapp.azurewebsites.net/api/pet/getall2").responseJSON { response in
            
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            //print("Result: \(response.result.value)") // response serialization result

            
            if let json = response.result.value  as? [String: Any],
                let results = json[""] as? [[String: Any]] {
                
                for data in results {
                    self.pets.append(Pet(data: data))
                }
                
                print("JSON: \(self.pets)")
            }
            
            self.delegate?.done()
            
        }
        
//             
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
