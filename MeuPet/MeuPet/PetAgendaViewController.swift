//
//  PetAgendaViewController.swift
//  MeuPet
//
//  Created by giullianogp on 11/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class PetAgendaViewController: UIViewController {

    var pet: Pet!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if pet != nil {
            let parameters: Parameters = [
                "PetId" : "\(pet.PetId)"
            ]
            
            
            Alamofire.request("https://meupetapp.azurewebsites.net/api/agenda/get", method: .post, parameters: parameters).validate().responseJSON { response in
                switch response.result {
                case .success:
                    self.performSegue(withIdentifier: "petSalvar", sender: nil)
                case .failure(let error):
                    print(error)
                }
            }
            
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detail = segue.destination as? DetalhePetController, segue.identifier == "detalhePet" {
            detail.pet =  pet
        }

    }
    
}
