//
//  HomeController.swift
//  MeuPet
//
//  Created by giullianogp on 25/11/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import Alamofire

class HomeController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, AsyncDelegate {

    @IBOutlet weak var petView: UICollectionView!
    var dataManager = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func consultaPet(){
    
    
//    Alamofire.request("https://meuapp.azurewebsites.net/api/usuario/logar", method: .get)
//        .authenticate(user: "admin", password: "123")
//        .responseJSON { response  in
//    if (response.result.error == nil){
//    
//    print("Request: \(String(describing: response.request))")   // original url request
//    print("Response: \(String(describing: response.response))") // http url response
//    print("Result: \(response.result)")                         // response serialization result
//    
//    if let json = response.result.value  as? [String: Any],
//    let results = json["results"] as? [[String: Any]] {
//    
//    for data in results {
//        UserManager.shared.user = Usuario(data: data)
//    }
    
        
    
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
        
        
}}}}

