//
//  BaseballVC.swift
//  CollectionTabCreativeApp
//
//  Created by Ella Madalinski on 11/7/21.
//

import UIKit

class BaseballVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
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
        return baseball.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        cell.contentView.addSubview(UIImageView(image: baseball[indexPath.row]))
        return cell
    }
    
}
