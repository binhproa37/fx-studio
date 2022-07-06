//
//  ViewController.swift
//  TouchEvent
//
//  Created by Bui Dang Nam Binh on 05/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var ball: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
                    
            if touch.view == redView {
                print("inside RedView")
            } else {
                print("outside RedView")
            }
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
                    if touch.view == ball {
                        let location = touch.location(in: view)
                        ball.center = location
                    }
                }
    }
}
