//
//  SoccerVC.swift
//  CollectionTabCreativeApp
//
//  Created by Ella Madalinski on 11/7/21.
//

import UIKit

class SoccerVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    var soccer : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
        soccer.append(UIImage(named: "soccer1")!)
        soccer.append(UIImage(named: "soccer2")!)
        soccer.append(UIImage(named: "soccer3")!)
        soccer.append(UIImage(named: "soccer4")!)
        soccer.append(UIImage(named: "soccer5")!)
        soccer.append(UIImage(named: "soccer6")!)
        soccer.append(UIImage(named: "soccer7")!)
        soccer.append(UIImage(named: "soccer8")!)
        soccer.append(UIImage(named: "soccer9")!)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let yourWidth = collectionView.bounds.width/3.0
        let yourHeight = yourWidth

        return CGSize(width: yourWidth, height: yourHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return soccer.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        cell.contentView.addSubview(UIImageView(image: soccer[indexPath.row]))
        return cell
    }

}
