//
//  AgendamentoCollectionViewCell.swift
//  MeuPet
//
//  Created by iossenac on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

class AgendamentoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var lblDescricao: UILabel!
    
    @IBOutlet weak var lblEndereco :UILabel!
    
    @IBOutlet weak var lblHora :UILabel!
    
    var agenda: Agenda! {
        didSet  {
            self.lblDescricao.text   = self.agenda.Descricao
            self.lblEndereco.text    = self.agenda.Endereco
            
//            let formatter = DateFormatter()
//            formatter.dateFormat = "dd/MM hh:mm"
//            
//            let dateTimeString = formatter.string(from: self.agenda.DataHora)
//            dateTimeString = split(da)
            
        }
    }
    
    
}
