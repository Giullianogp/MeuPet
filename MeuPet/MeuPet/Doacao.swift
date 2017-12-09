//
//  Doacao.swift
//  MeuPet
//
//  Created by iossenac on 09/12/17.
//  Copyright © 2017 senac. All rights reserved.
//


import UIKit

class Doacao {
    
    var DoacaoId : Int!
    var Descricao : String!
    var Contato : String!
    var ImageUrl : String!
    
    init() {
    }
    
    convenience init(data: [String: Any]) {
        self.init()
        
        self.DoacaoId = data["doacaoId"] as? Int ?? 0
        self.Descricao = data["descricao"] as? String ?? ""
        self.ImageUrl = data["imageUrl"] as? String ?? ""
        self.Contato = data["contato"] as? String ?? ""
        
    }
    
}
