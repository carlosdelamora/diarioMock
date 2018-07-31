//
//  NewsViewCell.swift
//  DiarioMock
//
//  Created by Carlos De la mora on 7/29/18.
//  Copyright © 2018 carlosdelamora. All rights reserved.
//

import UIKit

class NewsViewCell: UICollectionViewCell {
  @IBOutlet weak var newsLabel:UILabel!
  @IBOutlet weak var imageView:UIImageView!
  //@IBOutlet weak var co
  override func awakeFromNib() {
    super.awakeFromNib()
    layer.shadowColor = UIColor.lightGray.cgColor
    layer.shadowOffset = CGSize(width: 1, height: 1)
    layer.shadowOpacity = 1
    layer.cornerRadius = 5
    layer.shadowRadius = 1.0
    layer.masksToBounds = false
    let touchAnimation = UILongPressGestureRecognizer(target: self, action: #selector(animateShadow(_:)))
    touchAnimation.minimumPressDuration = 0.1
    //UIGestureRecognizer(target: self, action: #selector(animateShadow(_:)))
    self.addGestureRecognizer(touchAnimation)
    //layer.shadowPath = UIBezierPath(roundedRect:bounds, cornerRadius: 5).cgPath
    //contentView.layer.shadowOffset = CGSize(width: 1, height: 1)
    //contentView.layer.shadowColor = UIColor.lightGray.cgColor
    //contentView.layer.shadowOffset = CGSize(width: 1, height: 1)
    //contentView.layer.shadowOpacity = 1
    //contentView.layer.cornerRadius = 5
  }
  
  @objc
  func animateShadow(_ gesture: UITapGestureRecognizer){
    switch gesture.state{
      case .began:
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
          self.layer.shadowOffset = CGSize(width: 0, height: 0)
        }, completion: nil)
      case .ended:
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.1, options: .allowUserInteraction, animations: {
          self.layer.shadowOffset = CGSize(width: 1, height: 1)
        }, completion: nil)
      case .cancelled:
        UIView.animate(withDuration: 0.3) {
           self.layer.shadowOffset = CGSize(width: 1, height: 1)
        }
      default:
        break
    }
  }
  
  
 
  
}
