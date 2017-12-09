//
//  DoacaoController.swift
//  MeuPet
//
//  Created by giullianogp on 25/11/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

class DoacaoController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate , AsyncDelegate   {

    @IBOutlet weak var doacaoCollection: UICollectionView!
    
    var dataManager = DoacaoDataManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        self.dataManager.delegate = self
        self.doacaoCollection.dataSource = self
        self.doacaoCollection.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "doacaoCell", for: indexPath) as! DoacaoCell
        cell.doacao = self.dataManager.doacoes[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return self.dataManager.doacoes.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        performSegue(withIdentifier: "doacaoDetalhe", sender: indexPath.row)
    }
    
    
    func done() {
        doacaoCollection.reloadData()
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let detail = segue.destination as? DetalhePetController, segue.identifier == "doacaoDetalhe" {
//            if let index = sender as? Int {
//               // detail.pet =  self.dataManager.doacoes[index]
//            }
//        }
    }


   
}
