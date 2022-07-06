//
//  MyView.swift
//  MyView
//
//  Created by Bui Dang Nam Binh on 28/06/2022.
//

import UIKit

class MyView: UIView {
    
    var count = 0
    var avatarImageView: UIImageView?
    var nameLabel: UILabel?
    var markButton: UIButton?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        
        avatarImageView = UIImageView(image: UIImage(named: "no-avatar"))
        avatarImageView!.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*4/5)
        avatarImageView!.contentMode = .scaleAspectFit
        avatarImageView!.backgroundColor = .white
        self.addSubview(avatarImageView!)
        
        nameLabel = UILabel(frame: CGRect(x: 0,
                                             y: frame.size.height*4/5,
                                             width: frame.size.width,
                                             height: frame.size.height/5))
        nameLabel!.text = "Nam Binh"
        nameLabel!.backgroundColor = .lightGray
        nameLabel!.textAlignment = .center
        nameLabel!.textColor = .blue
        self.addSubview(nameLabel!)
        
        markButton = UIButton(frame: CGRect(x: 0,
                                            y: 0,
                                            width: frame.size.width,
                                            height: frame.size.height))
        markButton!.backgroundColor = .clear
        markButton!.addTarget(self, action: #selector(tap), for: .touchUpInside)
        self.addSubview(markButton!)
        
    }
    
    @objc func tap() {
        count += 1
        nameLabel?.text = "\(count)"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init (coder:) has not been implemented ")
    }
    
    
}
