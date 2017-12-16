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
    var DataHora : String
    var Endereco : String
    var PetNome : String
    var DataHora2 : Date?
    
    init(data: [String: Any]) {
        self.Id         = data["agendaId"] as? Int ?? 0
        self.Descricao  = data["descricao"] as? String ?? ""
        self.DataHora   = data["data"] as? String ?? ""
        self.Endereco   = data["endereco"] as? String ?? ""
        self.PetNome    = data["petNome"] as? String ?? ""
//        self.DataHora2  = data["data"] as! Date
        
        
        let dateFor = DateFormatter()
        dateFor.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        
        self.DataHora2 = dateFor.date(from: data["data"] as? String ?? "")
    }
}
