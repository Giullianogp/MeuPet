//
//  AgendamentoCollectionViewCell.swift
//  MeuPet
//
//  Created by iossenac on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

class AgendamentoCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var lblTituloAgenda: UILabel!
    
    @IBOutlet weak var lblPetNome: UILabel!
    
    @IBOutlet weak var lblDia: UILabel!
    
    @IBOutlet weak var lblMes: UILabel!
    
    @IBOutlet weak var lblHora: UILabel!
    
    var agenda: Agenda! {
        didSet  {
          self.lblTituloAgenda.text   = self.agenda.Descricao
          self.lblPetNome.text    = "Nome do Pet"
          let formatter         = DateFormatter()
          formatter.dateFormat  = "dd/MM hh:mm"
          let dateTimeString    = formatter.string(from: self.agenda.DataHora)
          self.lblHora.text     = dateTimeString
            
          formatter.dateFormat  = "hh:mm"
          let timeString    = formatter.string(from: self.agenda.DataHora)
          self.lblHora.text = timeString
            
          formatter.dateFormat  = "LLL"
          let monthString    = formatter.string(from: self.agenda.DataHora)
          self.lblMes.text = monthString
            
        }
    }
    
    
}
