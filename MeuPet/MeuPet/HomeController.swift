//
//  HomeController.swift
//  MeuPet
//
//  Created by giullianogp on 25/11/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate , AsyncDelegate  {
    
    @IBOutlet weak var agendamentoCollectionView: UICollectionView!
    @IBOutlet weak var petView: UICollectionView!
    
    var agendaDataSource = AgendaDataSource()
    var dataManager = PetDataManager()
    private var agenda :Agenda!

    
    var gradient: CAGradientLayer!
    
    @IBAction func newClick(_ sender: Any) {
         performSegue(withIdentifier: "petNovo", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        
        self.agendaDataSource.delegate = self
        self.agendamentoCollectionView.dataSource = self
        self.agendamentoCollectionView.delegate = self
        
        self.dataManager.delegate = self
        self.petView.dataSource = self
        self.petView.delegate = self

        
        gradient = CAGradientLayer()
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 2.0)
        gradient.colors = [UIColor(hex: "2F3D68").cgColor, UIColor(hex: "2F3D68").cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        gradient.frame = self.view.bounds
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == agendamentoCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "agendaViewCell", for: indexPath) as! AgendamentoCollectionViewCell
            cell.agenda = self.agendaDataSource.data[indexPath.row]
            self.agenda = cell.agenda
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "petCell", for: indexPath) as! PetCollectionViewCell
            cell.pet = self.dataManager.pets[indexPath.row]
            return cell
        }
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        if collectionView == agendamentoCollectionView {
            return self.agendaDataSource.data.count
        } else {
            return self.dataManager.pets.count
        }
        
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        if collectionView == petView {

            performSegue(withIdentifier: "petDetalhe", sender: indexPath.row)
        }
    }

    
    func done() {
        petView.reloadData()
        agendamentoCollectionView.reloadData()
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
            print("clicou")
            
            if let destination = segue.destination as? AgendaDetalheViewController {
                destination.agenda  = self.agenda
            }
        
        
    }
    
    @IBAction func salvarPetUnwind(segue: UIStoryboardSegue)
    {
        if segue.identifier == "petSalvar"{
            dataManager.Reload()
        }
    }
}





