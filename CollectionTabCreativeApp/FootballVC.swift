//
//  FootballVC.swift
//  CollectionTabCreativeApp
//
//  Created by Ella Madalinski on 11/7/21.
//

import UIKit

class FootballVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource ,  UICollectionViewDelegateFlowLayout {

    var football : [UIImage] = []

    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
        football.append(UIImage(named: "football1")!)
        football.append(UIImage(named: "football2")!)
        football.append(UIImage(named: "football3")!)
        football.append(UIImage(named: "football4")!)
        football.append(UIImage(named: "football5")!)
        football.append(UIImage(named: "football6")!)
        football.append(UIImage(named: "football7")!)
        football.append(UIImage(named: "football8")!)
        football.append(UIImage(named: "football9")!)
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
        return football.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        cell.contentView.addSubview(UIImageView(image: football[indexPath.row]))
        return cell
    }

}
