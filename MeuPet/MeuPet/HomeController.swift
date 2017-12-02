//
//  HomeController.swift
//  MeuPet
//
//  Created by giullianogp on 25/11/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
//import Alamofire

class HomeController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var agendamentoCollectionView: UICollectionView!

    private var agendaDataSource = AgendaDataSource()
    private var agenda :Agenda!
class HomeController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate , AsyncDelegate {

    @IBOutlet weak var petView: UICollectionView!
    var dataManager = PetDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.agendamentoCollectionView.dataSource = self

        self.navigationItem.hidesBackButton = true
        
        // Do any additional setup after loading the view.
        self.dataManager.delegate = self
        self.petView.dataSource = self
        self.petView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.agendaDataSource.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =
            collectionView.dequeueReusableCell(withReuseIdentifier: "agendaViewCell",
                                               for: indexPath) as! AgendamentoCollectionViewCell
        
        
        cell.agenda = self.agendaDataSource.data[indexPath.row]
        self.agenda = cell.agenda
        
        print("OK2")
        return cell
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataManager.pets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "petCell", for: indexPath) as! PetCollectionViewCell
        
        cell.pet = self.dataManager.getPet(at: indexPath.row)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        performSegue(withIdentifier: "detalhePet", sender: indexPath.row)
    }

    
    func done() {
        petView.reloadData()
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
        
        
}





