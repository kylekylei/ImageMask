//
//  ViewController.swift
//  Image
//
//  Created by Kyle Lei on 2021/7/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let mainView = UIView()
        view.addSubview(mainView)
        
        let screenSize = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
        let backgroundImage = UIImageView(image: UIImage(named:"img_tokyo"))
        backgroundImage.frame = screenSize
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.alpha = 0.3
        mainView.addSubview(backgroundImage)
       
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = UIScreen.main.bounds
        gradientLayer.colors = [
          CGColor(red: 0, green: 0, blue: 1, alpha: 0),
          CGColor(red: 0, green: 0, blue: 1, alpha: 1)
        ]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        backgroundImage.layer.mask = gradientLayer
        
        
        
        let foregroundImage = UIImageView(image: UIImage(named:"img_tokyo"))
        foregroundImage.frame = screenSize
        foregroundImage.contentMode = .scaleAspectFill
        mainView.addSubview(foregroundImage)
               
        let maskImage = UIImageView(image: UIImage(named:"img_logomask"))
        maskImage.frame = CGRect(x: 0, y: 150, width: UIScreen.main.bounds.width, height: 600)
        maskImage.contentMode = .scaleAspectFill
        
        foregroundImage.mask = maskImage
        
        
    }
}
