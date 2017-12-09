//
//  DetalheAgendaController.swift
//  MeuPet
//
//  Created by giullianogp on 02/12/17.
//  Copyright © 2017 senac. All rights reserved.
//

import UIKit

class DetalheAgendaController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var pickerData = ["Consulta", "Banho", "Vacina"]

    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    @IBAction func SaveAgenda(_ sender: UIBarButtonItem) {
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.pickerView.dataSource = self
        self.pickerView.delegate = self
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }


    
}
