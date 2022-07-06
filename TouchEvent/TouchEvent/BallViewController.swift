//
//  BallViewController.swift
//  TouchEvent
//
//  Created by Bui Dang Nam Binh on 05/07/2022.
//

import UIKit

class BallViewController: UIViewController {

    @IBOutlet weak var ball: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
                    if touch.view == ball {
                        let location = touch.location(in: view)
                        ball.center = location
                    }
                }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
