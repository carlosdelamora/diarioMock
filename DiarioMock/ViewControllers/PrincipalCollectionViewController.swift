//
//  PrincipalCollectionViewController.swift
//  DiarioMock
//
//  Created by Carlos De la mora on 7/29/18.
//  Copyright © 2018 carlosdelamora. All rights reserved.
//

import UIKit

private let reuseIdentifier = "NewsCell"

class PrincipalCollectionViewController: UICollectionViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Register cell classes
    //self.collectionView!.register(NewsViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    let statusBarHeight = UIApplication.shared.statusBarFrame.height
    let navigationBarHeight = statusBarHeight + (navigationController?.navigationBar.frame.height ?? 0)
    // Do any additional setup after loading the view.
    navigationController?.navigationBar.backgroundColor = .clear
    navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationController?.navigationBar.shadowImage = UIImage()
    collectionView?.contentInset = UIEdgeInsetsMake(-navigationBarHeight, 0, 0, 0)
    //navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
    let layout = collectionViewLayout as! UICollectionViewFlowLayout
    layout.minimumLineSpacing = 4
    layout.itemSize = CGSize(width: view.frame.width - 4, height: 185)
    //collectionView?.backgroundColor = .lightGray
    collectionView?.canCancelContentTouches = false 
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  
  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of items
    return 25
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! NewsViewCell
    // Configure the cell
    return cell
  }
  
  
  override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "PhotoReusableView", for: indexPath) as! PhotoReusableView
    return header
  }
    
}
