//
//  AgendamentosDataSource.swift
//  MeuPet
//
//  Created by iossenac on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

class AgendaDataSource: NSObject {
    
    var data = [Agenda]()
    
    override init() {
        super.init()
        
        var dictionary = [String: Any]()
        dictionary["Id"] = 4
        dictionary["Descricao"] = "Vacina anti raiva. Dosagem 10mg"
        dictionary["DataHora"] = Date()
        dictionary["PetId"] = 1
        dictionary["Endereco"] = "Rua Botafogo 520 - Menino Deus - Porto Alegre - RS"
        
        data.append(Agenda(data: dictionary))
        
        
        var dictionary2 = [String: Any]()
        dictionary2["Id"] = 5
        dictionary2["Descricao"] = "Tosa + Banho"
        dictionary2["DataHora"] = Date()
        dictionary2["PetId"] = 1
        dictionary2["Endereco"] = "Rua Botafogo 520 - Menino Deus - Porto Alegre - RS"
        
        data.append(Agenda(data: dictionary2))

    
    
    }

}
