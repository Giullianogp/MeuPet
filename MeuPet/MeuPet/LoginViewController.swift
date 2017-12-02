//
//  LoginViewController.swift
//  MeuPet
//
//  Created by iossenac on 25/11/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import Alamofire

protocol AsyncDelegate {
    func done()
}

class LoginViewController: UIViewController {

    @IBOutlet weak var txtLogin: UITextField!
    @IBOutlet weak var imgLogin: UIImageView!
    @IBOutlet weak var txtPassword: UITextField!
    var delegate: AsyncDelegate?
 
    @IBAction func LoginClick(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueLogin", sender: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func Login(){
        
        
        Alamofire.request("https://meuapp.azurewebsites.net/api/usuario/logar", method: .post)
            .authenticate(user: txtLogin.text!, password: txtPassword.text!)
            .responseJSON { response  in
            if (response.result.error == nil){
                
                print("Request: \(String(describing: response.request))")   // original url request
                print("Response: \(String(describing: response.response))") // http url response
                print("Result: \(response.result)")                         // response serialization result
                
                if let json = response.result.value  as? [String: Any],
                    let results = json["results"] as? [[String: Any]] {
                    
                    for data in results {
                       UserManager.shared.user = Usuario(data: data)
                    }
                    
                }
                
                self.delegate?.done()

               self.performSegue(withIdentifier: "segueLogin", sender: nil)
            } else  {
               
                print(response.result.description + " " + self.txtLogin.text! + " " + self.txtPassword.text!)
                
                //let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
               
            }
        }
    
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
    }


}
