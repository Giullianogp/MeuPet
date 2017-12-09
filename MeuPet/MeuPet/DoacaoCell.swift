//
//  DoacaoCell.swift
//  MeuPet
//
//  Created by iossenac on 09/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire

class DoacaoCell:  UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var doacaoView: UILabel!
    
    var doacao: Doacao! {
        didSet {
            self.doacaoView.text = self.doacao.Descricao
            
            Alamofire.request("https://meupetblob.blob.core.windows.net/pets/image.png", method: .get).responseImage { response in
                if let poster = response.result.value {
                    self.imageView.image = poster

                }
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.imageView.layer.cornerRadius = self.imageView.frame.size.width / 2;
        self.imageView.layer.masksToBounds = true;
    }

}
