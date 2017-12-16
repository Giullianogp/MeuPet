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
    
    @IBOutlet weak var lblPetNome: UILabel!
    
    var agenda: Agenda! {
        didSet  {
            self.lblDescricao.text  = self.agenda.Descricao
            self.lblEndereco.text   = self.agenda.Endereco
            self.lblPetNome.text    = self.agenda.PetNome
            
            let formatterHora = DateFormatter()
            formatterHora.dateFormat = "HH:mm"
            
      
            self.lblHora.text = formatterHora.string(from: self.agenda.DataHora2!)
            
            let formatterDia = DateFormatter()
            formatterDia.dateFormat = "dd/MM"
            
           
            self.lblDate.text = formatterDia.string(from: self.agenda.DataHora2!)

            
                //dd/MM
            
        }
    }    
}
