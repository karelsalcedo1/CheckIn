//
//  MenuPrincipal.swift
//  CheckIn
//
//  Created by Karel Alexander Ponce Salcedo on 11/07/18.
//  Copyright © 2018 Karel Alexander Ponce Salcedo. All rights reserved.
//

import UIKit

class MenuPrincipal: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var ImgBack: UIImageView!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var LogoImg: UIImageView!
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var ViewBack: UIView!
    @IBOutlet weak var btn3: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        ChangePhotho()
        ImgBack.alpha = 0
        text1.alpha = 0
        btn1.alpha = 0
        btn2.alpha = 0
        btn3.alpha = 0
        UIView.animate(withDuration: 1, animations: {
            self.ImgBack.alpha = 1
            }, completion: {
                finished in 
            })
    }
    @IBAction func btn1(_ sender: Any) {
        //Login with Facebook
        let alertController = UIAlertController(title: "Error", message: "Esta función aún no esta disponible en esta versión, lo sentimos.", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
    }
    @IBAction func btn2(_ sender: Any) {
        //Login with a User
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "login") as! Login
        self.present(vc, animated: true, completion: nil)
    }
    @IBAction func btn3(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "registro") as! Registro
        self.present(vc, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, animations: {
            self.LogoImg.transform = CGAffineTransform(translationX: 0, y: -130)
        }, completion: {finished in
            self.text1.alpha = 1
            self.btn1.alpha = 1
            self.btn2.alpha = 1
            self.btn3.alpha = 1
        })
    }
    
    func ChangePhotho(){
            ImgBack.image = #imageLiteral(resourceName: "ron-smith-328524-unsplash")
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.ImgBack.image = #imageLiteral(resourceName: "n1")
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    self.ImgBack.image = #imageLiteral(resourceName: "n2")
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.ImgBack.image = #imageLiteral(resourceName: "n3")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                        self.ChangePhotho()
                    }
                }
            }
    }
    }

    

}
