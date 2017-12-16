//
//  AgendamentosDataSource.swift
//  MeuPet
//
//  Created by iossenac on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import Alamofire

class AgendaDataSource: NSObject {
    
    var data = [Agenda]()
    
    var delegate: AsyncDelegate?
    
    override init() {
        super.init()
        
        Alamofire.request("https://meupetapp.azurewebsites.net/api/agenda/getproximas").responseJSON { response in
            
            self.data = [Agenda]()
            
            if let json = response.result.value as? [[String: Any]] {
                
                for agen in json {
                    self.data.append(Agenda(data: agen))
                }
              
            }
            self.delegate?.done()
        }


    
    
    }

}
