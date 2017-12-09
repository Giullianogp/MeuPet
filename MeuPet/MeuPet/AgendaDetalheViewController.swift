//
//  AgendaDetalheViewController.swift
//  MeuPet
//
//  Created by iossenac on 09/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

class AgendaDetalheViewController: UIViewController {
    
    var agenda: Agenda!
    
    @IBOutlet weak var imgPet: UIImageView!
    
    @IBOutlet weak var lblAgeTitulo: UILabel!
    
    @IBOutlet weak var lblPetNome: UILabel!
    
    @IBOutlet weak var lblAgeDataMonth: UILabel!
    
    @IBOutlet weak var lblAgeDataDay: UILabel!
    
    @IBOutlet weak var lblAgeHora: UILabel!
    
    @IBOutlet weak var lblAgeDataEndereco: UILabel!
    
    @IBOutlet weak var txtAgeDescricao: UITextView!
    
    @IBOutlet weak var lblAgeLocal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
