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

class PetAgendaViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {

    var pet: Pet!

    @IBOutlet weak var agendaView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.agendaView.dataSource = self
         self.agendaView.delegate = self
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detail = segue.destination as? DetalhePetController, segue.identifier == "detalhePet" {
            detail.pet =  pet
        }

    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "agendaViewCell", for: indexPath) as! AgendamentoCollectionViewCell
            cell.agenda = self.pet.Agendas[indexPath.row]
            return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.pet.Agendas.count
    
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
//        if collectionView == petView {
//            
//            performSegue(withIdentifier: "petDetalhe", sender: indexPath.row)
//        }
    }
    
    
    func done() {
        agendaView.reloadData()
//        agendamentoCollectionView.reloadData()
    }

    
}
