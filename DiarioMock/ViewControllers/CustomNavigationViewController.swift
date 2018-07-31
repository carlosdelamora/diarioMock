//
//  CustomNavigationViewController.swift
//  DiarioMock
//
//  Created by Carlos De la mora on 7/29/18.
//  Copyright © 2018 carlosdelamora. All rights reserved.
//

import UIKit

class CustomNavigationViewController: UINavigationController {
  
  let gradientLayer = CAGradientLayer()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let statusBarHeight = UIApplication.shared.statusBarFrame.height
    let navigationBarHeight = statusBarHeight + navigationBar.frame.height
    gradientLayer.frame =  CGRect(x: 0, y: -statusBarHeight , width: view.frame.width, height: navigationBarHeight)
    gradientLayer.colors = [ UIColor(white: 0.0, alpha: 0.75).cgColor, UIColor.clear.cgColor]
    //gradientLayer.locations = [NSNumber(value: 1.0 as Float), NSNumber(value: 0.0 as Float)]
    //let gradientView = GradientView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 44))
    //gradientView.backgroundColor = .black
    navigationBar.layer.addSublayer(gradientLayer)
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override var preferredStatusBarStyle: UIStatusBarStyle{
    return .lightContent
  }
  
  
  
}
