//
//  DetalhePetController
//  MeuPet
//
//  Created by iossenac on 09/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire

class DetalhePetController: UIViewController {

    
    var pet: Pet!
 
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nomeView: UITextField!
    @IBOutlet weak var pesoView: UITextField!
    @IBOutlet weak var racaView: UITextField!
    @IBOutlet weak var nascimentoView: UITextField!
    
    @IBAction func saveClick(_ sender: Any) {
        
        if pet == nil {
            
            let parameters: Parameters = [
                "foo": "bar",
                "baz": ["a", 1],
                "qux": [
                    "x": 1,
                    "y": 2,
                    "z": 3
                ]
            ]
            
            Alamofire.request("https://meupetapp.azurewebsites.net/api/pet/insert", method: .post, parameters: parameters).validate().responseJSON { response in
                switch response.result {
                case .success:
                    print("Validation Successful")
                case .failure(let error):
                    print(error)
                }
            }
        
        } else {
            
            let parameters: Parameters = [
                "foo": "bar",
                "baz": ["a", 1],
                "qux": [
                    "x": 1,
                    "y": 2,
                    "z": 3
                ]
            ]
            
            Alamofire.request("https://meupetapp.azurewebsites.net/api/pet/update", method: .post, parameters: parameters).validate().responseJSON { response in
                switch response.result {
                case .success:
                    print("Validation Successful")
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if pet != nil {
            self.nomeView.text = pet.Nome
            self.pesoView.text = pet.Peso
            self.racaView.text = pet.Raca
            self.nascimentoView.text = pet.Nascimento
        
            Alamofire.request(self.pet.ImageUrl!, method: .get).responseImage { response in
                if let poster = response.result.value {
                    self.imageView.image = poster
                    self.imageView.layer.cornerRadius = self.imageView.frame.size.width / 2;
                    self.imageView.layer.masksToBounds = true;

                }
            }
        }
        
    }
    
}
