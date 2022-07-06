///Users/buidangnambinh/Desktop/IOS/IOS/IOSTests/AutoLayout/AutoLayout/TaskViewCell.swift
//  ViewController.swift
//  AutoLayout
//
//  Created by Bui Dang Nam Binh on 29/06/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapLogin(_ sender: UIButton) {
        if (usernameTextField.text!.isEmpty || passwordTextField.text!.isEmpty) {
            print("Invalid!")
        }
        else {
            performSegue(withIdentifier: "goToHomeScreen", sender: self)
        }
    }
    
}

