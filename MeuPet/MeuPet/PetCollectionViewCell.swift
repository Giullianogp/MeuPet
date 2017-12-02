//
//  PetCollectionViewCell.swift
//  MeuPet
//
//  Created by iossenac on 25/11/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class PetCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imagePet: UIImageView!
    @IBOutlet weak var nomePet: UILabel!

    var pet: Pet! {
        didSet {
            self.nomePet.text = self.pet.Nome
            
            
            Alamofire.request(self.pet.ImageUrl, method: .get).responseImage { response in
                if let poster = response.result.value {
                   self.imagePet.image = poster
                }
            }
        }
    }
}
