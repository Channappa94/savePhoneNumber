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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.enterNumber.delegate = self
        self.enterNumber.delegate = self
        print(UserDefaults.standard.dictionaryRepresentation())
        let savedName = UserDefaults.standard.object(forKey: "PlayOneName")
        var saveNumber = UserDefaults.standard.object(forKey: "numberSave")
        
        print((savedName)!)

        
    }

    @IBAction func buttonOn(_ sender: Any) {
        //Below line will help you store the data inside  those key name
        var names = enterName.text
        var num = enterNumber.text
        UserDefaults.standard.set(enterName.text, forKey: "PlayOneName")
        UserDefaults.standard.set(enterNumber.text, forKey: "numberSave")

        
        
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    
}

