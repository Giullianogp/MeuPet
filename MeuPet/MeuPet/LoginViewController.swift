//
//  LoginViewController.swift
//  MeuPet
//
//  Created by iossenac on 25/11/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import Alamofire
import Pastel

class LoginViewController: UIViewController {

    @IBOutlet weak var txtLogin: UITextField!
    
    @IBOutlet weak var messageInfo: UILabel!
    @IBOutlet weak var imgLogin: UIImageView!
    @IBOutlet weak var txtPassword: UITextField!
    var delegate: AsyncDelegate?
 
    @IBAction func LoginClick(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueLogin", sender: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pastelView = PastelView(frame: view.bounds)
        
        // Custom Direction
        pastelView.startPastelPoint = .bottomLeft
        pastelView.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView.animationDuration = 3.0
        
        // Custom Color
        pastelView.setColors([UIColor(red: 156/255, green: 39/255, blue: 176/255, alpha: 1.0),
                              UIColor(red: 255/255, green: 64/255, blue: 129/255, alpha: 1.0),
                              UIColor(red: 123/255, green: 31/255, blue: 162/255, alpha: 1.0),
                              UIColor(red: 32/255, green: 76/255, blue: 255/255, alpha: 1.0),
                              UIColor(red: 32/255, green: 158/255, blue: 255/255, alpha: 1.0),
                              UIColor(red: 90/255, green: 120/255, blue: 127/255, alpha: 1.0),
                              UIColor(red: 58/255, green: 255/255, blue: 217/255, alpha: 1.0)])
        
        pastelView.startAnimation()
        view.insertSubview(pastelView, at: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func Login(){
        
        
//        Alamofire.request("https://meuapp.azurewebsites.net/api/usuario/logar", method: .post)
//            .authenticate(user: txtLogin.text!, password: txtPassword.text!)
//            .responseJSON { response  in
//            if (response.result.error == nil){
//                
//                print("Request: \(String(describing: response.request))")   // original url request
//                print("Response: \(String(describing: response.response))") // http url response
//                print("Result: \(response.result)")                         // response serialization result
//                
//                if let json = response.result.value  as? [String: Any],
//                    let results = json["results"] as? [[String: Any]] {
//                    
//                    for data in results {
//                       UserManager.shared.user = Usuario(data: data)
//                    }
//                    
//                }
//                
//                self.delegate?.done()
//
//               self.performSegue(withIdentifier: "segueLogin", sender: nil)
//            } else  {
//               
//                print(response.result.description + " " + self.txtLogin.text! + " " + self.txtPassword.text!)
//                
//                //let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
//               
//            }
//        }
    
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
