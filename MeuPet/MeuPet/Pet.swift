//
//  Pet.swift
//  MeuPet
//
//  Created by iossenac on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

class Pet {
    
    var PetId : Int!
    var Nome : String!
    var ImageUrl : String!
    var Nascimento : String!
    var Peso : String!
    var Raca : String!
    var Agendas : [Agenda]!
    

    init() {
    }

    convenience init(data: [String: Any]) {
        self.init()
        
        self.PetId = data["petId"] as? Int ?? 0
        self.Nome = data["nome"] as? String ?? ""
        self.ImageUrl = data["imageUrl"] as? String ?? ""
        self.Nascimento = data["nascimento"] as? String ?? ""
        self.Peso = data["peso"] as? String ?? ""
        self.Raca = data["raca"] as? String ?? ""
        
        self.Agendas = [Agenda]()
        
        if let agenda = data["agendas"] as? [[String: Any]] {
            for evento in agenda {
                self.Agendas.append(Agenda(data: evento))
            }
        }

    }

}
