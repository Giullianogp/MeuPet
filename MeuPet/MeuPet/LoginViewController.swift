//
//  LoginViewController.swift
//  MeuPet
//
//  Created by iossenac on 25/11/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {

    @IBOutlet weak var txtLogin: UITextField!
    
    @IBOutlet weak var messageInfo: UILabel!
    @IBOutlet weak var imgLogin: UIImageView!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        
        if (txtLogin.text?.isEmpty)! || (txtPassword.text?.isEmpty)! {
            messageInfo.text = "Preencha o email/senha"
            return
        } else {
            messageInfo.text = " "
        }
        
        print("teste")
        

        performSegue(withIdentifier: "segueLogin", sender: sender)
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //envia os dados recebidos da autenticação da API
     
    }


}
