//
//  ViewController.swift
//  Check10
//
//  Created by ICMMAC04-3F86 on 30/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var imgMaior10: UIImageView!
    @IBOutlet weak var imgMenor10: UIImageView!
    var lookmais = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgMaior10.isHidden = true
        imgMenor10.isHidden = true

        
    }
    
    @IBAction func look(_ sender: Any) {
        lookmais = Int(tfInput.text!) ?? 0
        if lookmais > 10 {
            imgMaior10.isHidden = false
            imgMenor10.isHidden = true
        }else {
            imgMaior10.isHidden = true
            imgMenor10.isHidden = false
        }
        view.endEditing(true)
        tfInput.text = ""
    }
    
}
