//
//  ViewController.swift
//  MyView
//
//  Created by Bui Dang Nam Binh on 28/06/2022.
//

import UIKit

extension ViewController: UserViewDelegate {
    func didTap(view: UserView, count: Int) {
        print("Count = \(count)")
    }
}

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hamster = MyView(frame: CGRect(x: 50, y: 100, width: 100, height: 125))
        hamster.nameLabel?.text = "hamster"
        hamster.avatarImageView?.image = UIImage(named: "hamster.jpeg")
        view.addSubview(hamster)
        
        let husky = MyView(frame: CGRect(x: 200, y: 100, width: 100, height: 125))
        husky.nameLabel?.text = "husky"
        husky.avatarImageView?.image = UIImage(named: "husky")
        view.addSubview(husky)
        
        let userView = Bundle.main.loadNibNamed("UserView", owner: self, options: nil)?.first as? UserView
        userView?.avatarImageView.image = UIImage(named: "quyt.jpeg")
        userView?.nameLabel.text = "Quyt"
        userView?.nameLabel.textColor = .blue
        userView?.frame = CGRect(x: 50, y: 250, width: 100, height: 100)
        userView?.delegate = self
        view.addSubview(userView!)
        
        let poodle = MyView(frame: CGRect(x: 200, y: 250, width: 100, height: 125))
        poodle.nameLabel?.text = "poodle"
        poodle.avatarImageView?.image = UIImage(named: "poodle3.jpeg")
        view.addSubview(poodle)
        
        let corgi = MyView(frame: CGRect(x: 50, y: 400, width: 100, height: 125))
        corgi.nameLabel?.text = "corgi"
        corgi.avatarImageView?.image = UIImage(named: "corgi.jpeg")
        view.addSubview(corgi)
        
        //
        let vit = MyView(frame: CGRect(x: 200, y: 400, width: 100, height: 125))
        vit.nameLabel?.text = "vit"
        vit.avatarImageView?.image = UIImage(named: "vit.jpeg")
        view.addSubview(vit)
        
    }
}



