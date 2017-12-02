//
//  File.swift
//  MeuPet
//
//  Created by iossenac on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit


class Agenda {
    
    var Id : Int
    var Descricao : String
    var PetId :Int
    var DataHora : Date
    var Endereco : String
    
    init(data: [String: Any]) {
        self.Id         = data["AgendaId"] as? Int ?? 0
        self.Descricao  = data["Descricao"] as? String ?? ""
        self.PetId      = data["PetId"] as? Int ?? 0
        self.DataHora   = data["Data"] as? Date ?? Date()
        self.Endereco   = data["Endereco"] as? String ?? ""
    }
}
