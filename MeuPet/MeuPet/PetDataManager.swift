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
        
       Consultar()
    }
    
    func Consultar()
    {
        Alamofire.request("https://meupetapp.azurewebsites.net/api/pet/getall2").responseJSON { response in
            
            self.pets = [Pet]()
            
            if let json = response.result.value as? [[String: Any]] {
                
                for data in json {
                    self.pets.append(Pet(data: data))
                }
                
                print("JSON: \(self.pets)")
            }
            self.delegate?.done()
        }
    }
    
    func Reload()
    {
        Consultar()
    }

}
