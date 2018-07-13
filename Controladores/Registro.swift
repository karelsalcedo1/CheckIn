//
//  Registro.swift
//  CheckIn
//
//  Created by Karel Alexander Ponce Salcedo on 12/07/18.
//  Copyright © 2018 Karel Alexander Ponce Salcedo. All rights reserved.
//

import UIKit

class Registro: UIViewController {
    
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtContraseña: UITextField!
    @IBOutlet weak var txtUsuario: UITextField!
    @IBOutlet weak var spiAcepto: UISwitch!
    @IBOutlet weak var Date: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        spiAcepto.isOn = false

       
    }
    
    @IBAction func btnBack(_ sender: Any){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MenuPrincipal") as! MenuPrincipal
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func btnEdad(_ sender: Any){
        Date.alpha = 1
    }
    @IBAction func btnRegistrarme(_ sender: Any){
    }


}
