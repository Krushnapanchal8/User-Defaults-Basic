//
//  ViewController.swift
//  userDefaults in Swift Basic
//
//  Created by Mac on 18/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myTextfield: UITextField!
    @IBOutlet var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let value = UserDefaults.standard.string(forKey: "userName")
        if value != nil {
            myLabel.text = "Hello, \(value!)"
        }
    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        
        UserDefaults.standard.set(myTextfield.text!, forKey: "userName")
        
        let alert = UIAlertController(title: "Saving!", message: "Data saved in UserDefaults Successfully", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "Ok", style: .default) { (action) in
            print("Data Has Been Saved")
        }
        
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
        
        myTextfield.text = ""
    }
    
}

