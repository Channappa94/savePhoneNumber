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
    
    var abc: String = String()
    var abd: String = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.enterNumber.delegate = self
        self.enterNumber.delegate = self
        print(UserDefaults.standard.dictionaryRepresentation())
        abc = UserDefaults.standard.object(forKey: "PlayOneName") as! String
        abd = UserDefaults.standard.object(forKey: "numberSave") as! String
       

    }

    
    @IBAction func buttonOn(_ sender: Any) {
        //Below line will help you store the data inside  those key name
        var name = enterName.text
        var abs = UserDefaults.standard.set(enterName.text, forKey: "PlayOneName")
        UserDefaults.standard.set(enterNumber.text, forKey: "numberSave")
        print(abc)
        print(abd)
        print(name!)
        if abc == name{
            print("yes")
        }
   
        
    }


    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    
}

