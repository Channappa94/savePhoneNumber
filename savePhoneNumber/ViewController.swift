//
//  ViewController.swift
//  savePhoneNumber
//
//  Created by IMCS2 on 7/24/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterNumber: UITextField!
    @IBOutlet weak var buttonTapped: UIButton!
    @IBOutlet weak var alertUser: UILabel!
    
    var abc: String = " "
    var abd: String = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.enterNumber.delegate = self
        self.enterNumber.delegate = self
       
        abc = UserDefaults.standard.value(forKey: "PlayOneName") as! String
        abd = UserDefaults.standard.value(forKey: "numberSave") as! String

    }
    @IBAction func buttonOn(_ sender: Any) {
        //Below line will help you store the data inside  those key name
        let name = enterName.text
        let number = enterNumber.text
        UserDefaults.standard.set(enterNumber.text, forKey: "numberSave")
        UserDefaults.standard.set(enterName.text, forKey: "PlayOneName")
        if ((abc == name) && (abd != number)){
            buttonTapped.setTitle("Updated", for: .normal)
            alertUser.text = "Number is updated"
        }else if((abc == name) && (abd == number)){
             buttonTapped.setTitle("save", for: .normal)
            alertUser.text = "Name already exists"
        }
    else{
            buttonTapped.setTitle("save", for: .normal)
            alertUser.text = "Number is saved"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    
}

