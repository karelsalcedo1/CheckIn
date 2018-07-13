//
//  Login.swift
//  CheckIn
//
//  Created by Karel Alexander Ponce Salcedo on 12/07/18.
//  Copyright © 2018 Karel Alexander Ponce Salcedo. All rights reserved.
//

import UIKit

class Login: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func BtnBackNew(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MenuPrincipal") as! MenuPrincipal
        self.present(vc, animated: true, completion: nil)
    }

    

}
