//
//  BaseballVC.swift
//  CollectionTabCreativeApp
//
//  Created by Ella Madalinski on 11/7/21.
//

import UIKit

class BaseballVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource{
    
    var baseball : [UIImage] = []

    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
        baseball.append(UIImage(named: "baseball1")!)
        baseball.append(UIImage(named: "baseball2")!)
        baseball.append(UIImage(named: "baseball3")!)
        baseball.append(UIImage(named: "baseball4")!)
        baseball.append(UIImage(named: "baseball5")!)
        baseball.append(UIImage(named: "baseball6")!)
        baseball.append(UIImage(named: "baseball7")!)
        baseball.append(UIImage(named: "baseball8")!)
        baseball.append(UIImage(named: "baseball9")!)
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return baseball.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        cell.contentView.addSubview(UIImageView(image: baseball[indexPath.row]))
        return cell
    }
    
}
