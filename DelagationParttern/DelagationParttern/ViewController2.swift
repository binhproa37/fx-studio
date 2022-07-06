//
//  ViewController2.swift
//  DelagationParttern
//
//  Created by Bui Dang Nam Binh on 02/07/2022.
//

import UIKit

protocol SampleDelegate {
    func didTapButton()
}

class ViewController2: UIViewController {
    
    var delegate: SampleDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        guard let delegate = delegate else {
            return
        }
        delegate.didTapButton()
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
