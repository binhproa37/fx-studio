//
//  UserView.swift
//  MyView
//
//  Created by Bui Dang Nam Binh on 28/06/2022.
//

import UIKit

protocol UserViewDelegate {
    func didTap(view: UserView, count: Int)
}

class UserView: UIView {

    var count = 0
    var delegate: UserViewDelegate?
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    

    @IBAction func tap(_ sender: Any) {
        count += 1
        nameLabel.text = "\(count)"
        
        if let delegate = delegate {
            delegate.didTap(view: self, count: count)
        }
    }
}
