//
//  ViewController.swift
//  CheckIn
//
//  Created by Karel Alexander Ponce Salcedo on 11/07/18.
//  Copyright © 2018 Karel Alexander Ponce Salcedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Imagen
    @IBOutlet weak var ImgLogo: UIImageView!
    @IBOutlet weak var spinn: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImgLogo.alpha = 0
        spinn.isHidden = true
        ImgLogo.transform = CGAffineTransform(scaleX: 0, y: 0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 5, animations: {
            self.spinn.isHidden = false
            self.ImgLogo.alpha = 1
            self.ImgLogo.transform = CGAffineTransform(scaleX: 1, y: 1)
        }, completion: { finished in
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "MenuPrincipal") as! MenuPrincipal
            self.present(vc, animated: false, completion: nil)
    })
    }

}

