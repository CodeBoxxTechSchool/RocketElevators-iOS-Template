//
//  Profile4ViewController.swift
//  UI Pro For IOS
//
//  Created by Anthony on 14/03/2018.
//  Copyright © 2018 Mavsoft. All rights reserved.
//

import UIKit

class Profile4ViewController: UIViewController {

    let randomImage:[String]! = ["snow","cooking","travel","bus","pots"]
    
    @IBOutlet weak var collectionViewPosts: UICollectionView!
    
    @IBOutlet weak var collectionViewFavourites: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewPosts.delegate = self
        collectionViewPosts.dataSource = self
        
        collectionViewFavourites.delegate = self
        collectionViewFavourites.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension Profile4ViewController:UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return randomImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionViewFavourites {
            let cell = collectionViewFavourites.dequeueReusableCell(withReuseIdentifier: "FavouriteCell", for: indexPath) as! Profile4FavouritesCollectionViewCell
            cell.ivPost.image = UIImage(named: randomImage[indexPath.row])
            return cell
        } else {
            let cell = collectionViewPosts.dequeueReusableCell(withReuseIdentifier: "PostCell", for: indexPath) as! Profile4PostsCollectionViewCell
            cell.ivPost.image = UIImage(named: randomImage.reversed()[indexPath.row])
            return cell
        }
    }
    
}
