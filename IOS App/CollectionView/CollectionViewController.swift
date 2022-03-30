//
//  CollectionViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 21/03/22.
//

import UIKit

class CollectionViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var collectionViewController: UICollectionView!
    
    //MARK: - Variables and Array
    var movieImage: [String] = ["Inception","kashmirFiles","kgf","ludo","spiderman","tenet","Inception","kashmirFiles","kgf","ludo","spiderman","tenet"]
    var movietitle: [String] = ["inception","The kashmir Files","K.G.F.Chapter-1","Ludo","Spiderman","Tenet","inception","The kashmir Files","K.G.F.Chapter-1","Ludo","Spiderman","Tenet"]
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

//MARK: - UICollectionViewDataSource
extension CollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = self.collectionViewController.dequeueReusableCell(withReuseIdentifier: "CollectionView", for: indexPath) as! CollectionViewCell
        cell.imgMovie.image = UIImage(named: movieImage[indexPath.row] )
        cell.lblMovie.text = movietitle[indexPath.row]
        return cell
    }
}
//MARK: - UICollectionViewDelegate
extension CollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}
//MARK: - UICollectionViewDelegateFlowLayout
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:200, height: 150)
    }
    
}
