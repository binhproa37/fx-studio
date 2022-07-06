//
//  ViewController.swift
//  DelagationParttern
//
//  Created by Bui Dang Nam Binh on 01/07/2022.
//

import UIKit

class ViewController: UIViewController, SampleDelegate {
    
    func didTapButton() {
        print("did tap button in screen 2")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToSecondScreen") {
            let desController = segue.destination as! ViewController2
            desController.delegate = self
        }
    }
    
    @IBAction func didTapShow2ndScreen(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    

}
