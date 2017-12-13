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
    
    var gradient: CAGradientLayer!
    
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
        
        
        gradient = CAGradientLayer()
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 2.0)
        gradient.colors = [UIColor(hex: "2F3D68").cgColor, UIColor(hex: "2F3D68").cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)

    }
    
    override func viewDidLayoutSubviews() {
        gradient.frame = self.view.bounds
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
