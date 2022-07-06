//
//  DetailViewController.swift
//  NoStoryboard1
//
//  Created by Bui Dang Nam Binh on 29/06/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detail"
        
        nameLabel.text = name
    }



}
