//
//  File.swift
//  MeuPet
//
//  Created by iossenac on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit


class Agenda {
    
    var AgendaId : Int
    var Descricao : String
    var Data : String
    
    init(data: [String: Any]) {
        self.AgendaId = data["AgendaId"] as? Int ?? 0
        self.Descricao = data["Descricao"] as? String ?? ""
        self.Data = data["Data"] as? String ?? ""
    }
}
