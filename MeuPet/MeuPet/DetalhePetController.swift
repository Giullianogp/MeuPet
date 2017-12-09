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
                "nome": nomeView.text ?? "",
                "imageUrl": "https://meupetblob.blob.core.windows.net/pets/image.png",
                "peso" : pesoView.text ?? "",
                "raca" : racaView.text ?? "",
                "nascimento" : nascimentoView.text ?? ""
            ]
            
            
            Alamofire.request("https://meupetapp.azurewebsites.net/api/pet/inserir", method: .post, parameters: parameters, encoding: JSONEncoding.default).validate().responseJSON { response in
                switch response.result {
                case .success:
                    self.performSegue(withIdentifier: "petSalvar", sender: nil)
                case .failure(let error):
                    print(error)
                }
            }
        
        } else {
            
            let parameters: Parameters = [
                "PetId" : "\(pet.PetId)",
                "Nome": nomeView.text ?? "",
                "Peso" : pesoView.text ?? "",
                "Raca" : racaView.text ?? "",
                "Nascimento" : nascimentoView.text ?? ""
            ]
            
            
            Alamofire.request("https://meupetapp.azurewebsites.net/api/pet/editar", method: .post, parameters: parameters).validate().responseJSON { response in
                switch response.result {
                case .success:
                    self.performSegue(withIdentifier: "petSalvar", sender: nil)
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
