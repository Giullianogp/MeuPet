//
//  AgendaDataManager.swift
//  MeuPet
//
//  Created by iossenac on 16/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import Alamofire

class AgendaDataManager: NSObject {
    
    var doacoes = [Doacao]()
    
    var delegate: AsyncDelegate?
    
    override init() {
        super.init()
        
        if pet != nil {
            let parameters: Parameters = [
                "PetId" : "\(pet.PetId)"
            ]
            
            let headers: HTTPHeaders = [
                "Content-Type": "application/json",
                "Accept": "application/json"
            ]
            
            Alamofire.request("https://meupetapp.azurewebsites.net/api/agenda/get", method: .post, parameters: parameters, headers: headers).responseJSON { response in
                
                if let json = response.result.value as? [[String: Any]] {
                    
                    for data in json {
                        //self.pets.append(Pet(data: data))
                    }
                    
                }
                }.response { response in
                    print("Request: \(response.request)")
                    print("Response: \(response.response)")
                    print("Error: \(response.error)")
            }
            
        }
    }

}
