//
//  Usuario.swift
//  MeuPet
//
//  Created by iossenac on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

class Usuario {

    var UsuarioId : Int
    var Nome : String
    var Senha : String
    
    init(data: [String: Any]) {
        self.UsuarioId = data["UsuarioId"] as? Int ?? 0
        self.Nome = data["Nome"] as? String ?? ""
        self.Senha = data["Senha"] as? String ?? ""
    }
}
