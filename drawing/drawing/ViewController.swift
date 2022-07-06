//
//  ViewController.swift
//  drawing
//
//  Created by Bui Dang Nam Binh on 27/06/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        drawLine(start: CGPoint(x: 50, y: 100), end: CGPoint(x: 350, y: 600))
    }
    

    func drawLine(start: CGPoint, end: CGPoint) {
            // PATH
            let path = UIBezierPath()
            path.move(to: start)
            path.addLine(to: end)
            path.close()
            
            //LAYER
            let shapeLayer = CAShapeLayer()
            shapeLayer.strokeColor = UIColor.blue.cgColor
            shapeLayer.lineWidth = 1.0
            shapeLayer.path = path.cgPath
            
            //ADD LAYER
            self.view.layer.addSublayer(shapeLayer)
        }
}

class FXLineView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    func drawLine(start: CGPoint, end: CGPoint) {
           // PATH
           let path = UIBezierPath()
           path.move(to: start)
           path.addLine(to: end)
           path.close()
           
           //LAYER
           let shapeLayer = CAShapeLayer()
           shapeLayer.strokeColor = UIColor.red.cgColor
           shapeLayer.lineWidth = 1.0
           shapeLayer.path = path.cgPath
           
           //ADD LAYER
           self.layer.addSublayer(shapeLayer)
       }
    
}

