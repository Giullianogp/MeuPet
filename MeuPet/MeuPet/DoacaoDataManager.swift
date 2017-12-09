//
//  DoacaoDataManager.swift
//  MeuPet
//
//  Created by iossenac on 09/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import Alamofire


class DoacaoDataManager: NSObject {
    
    var doacoes = [Doacao]()
    
    var delegate: AsyncDelegate?
    
    override init() {
        super.init()
        
        Alamofire.request("https://meupetapp.azurewebsites.net/api/doacao/getall").responseJSON { response in
            
            if let json = response.result.value as? [[String: Any]] {
                for data in json {
                    self.doacoes.append(Doacao(data: data))
                }
            }
            self.delegate?.done()
        }
    }
    
}
