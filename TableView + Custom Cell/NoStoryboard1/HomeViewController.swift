//
//  HomeViewController.swift
//  NoStoryboard1
//
//  Created by Bui Dang Nam Binh on 29/06/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    var users: [User] = []

    var names: [[String]] =
           [
               ["Tí", "Tèo", "Hùng", "Lam", "Thuỷ", "Tuấn", "Trung", "Hạnh"],
               ["Bình", "Khánh", "Toàn", "Tâm", "An", "Hương", "Huy", "Quang", "Vân", "Đài", "Tiến"]
       ]
    var titles: [String] = ["IOS", "Android"]

    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")    
        tableview.delegate = self
        tableview.dataSource = self
        
        let nib = UINib(nibName: "HomeCell", bundle: .main)
        tableview.register(nib, forCellReuseIdentifier: "cell")
        
        users = getUser()
        
        
}


}
extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeCell
        let user = users[indexPath.row]
        cell.nameLabel.text = user.name
        cell.subTitleLabel.text = user.getSubTitle()
//        cell.textLabel?.text = names[indexPath.section][indexPath.row]
//
//        let label = UILabel(frame: CGRect(x: 20, y: 30, width: 100, height: 20))
//        label.text = "sub title"
//        label.textColor = .red
//        cell.addSubview(label)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("selected cell: \( names[indexPath.section][indexPath.row])")
        
        let user = users[indexPath.row]
        let vc = DetailViewController()
        
        vc.name = user.name
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }
    
}
