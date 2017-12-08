//
//  Pet.swift
//  MeuPet
//
//  Created by iossenac on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

class Pet {
    
    var PetId : Int?
    var Nome : String?
    var ImageUrl : String?
    var Nascimento : String?

    init() {
    }

    convenience init(data: [String: Any]) {
        self.init()
        
        self.PetId = data["PetId"] as? Int ?? 0
        self.Nome = data["Nome"] as? String ?? ""
        self.ImageUrl = data["ImageUrl"] as? String ?? ""
        self.Nascimento = data["Nascimento"] as? String ?? ""
    }

}
