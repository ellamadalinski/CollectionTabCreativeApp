//
//  BasketballVC.swift
//  CollectionTabCreativeApp
//
//  Created by Ella Madalinski on 11/7/21.
//

import UIKit

class BasketballVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    var basketball : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
        basketball.append(UIImage(named: "basketball1")!)
        basketball.append(UIImage(named: "basketball2")!)
        basketball.append(UIImage(named: "basketball3")!)
        basketball.append(UIImage(named: "basketball4")!)
        basketball.append(UIImage(named: "basketball5")!)
        basketball.append(UIImage(named: "basketball6")!)
        basketball.append(UIImage(named: "basketball7")!)
        basketball.append(UIImage(named: "basketball8")!)
        basketball.append(UIImage(named: "basketball9")!)
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
        return basketball.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        cell.contentView.addSubview(UIImageView(image: basketball[indexPath.row]))
        return cell
    }

}
