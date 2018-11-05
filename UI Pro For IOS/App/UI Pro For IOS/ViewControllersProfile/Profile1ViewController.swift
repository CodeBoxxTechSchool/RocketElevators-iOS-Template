//
//  Profile1ViewController.swift
//  UI Pro For IOS
//
//  Created by Anthony on 14/03/2018.
//  Copyright © 2018 Mavsoft. All rights reserved.
//

import UIKit

class Profile1ViewController: UIViewController {

    var randomImages:[String]! = ["snow","cooking","travel","bus","pots"]
    
    @IBOutlet weak var collectionViewProfile: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewProfile.delegate = self
        collectionViewProfile.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension Profile1ViewController:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return randomImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionViewProfile.dequeueReusableCell(withReuseIdentifier: "ProfileCell", for: indexPath) as! Profile1CollectionViewCell
        
        cell.ivPost.image = UIImage(named: randomImages[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionViewProfile.frame.width / 2) - 10, height: collectionViewProfile.frame.height / 3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
