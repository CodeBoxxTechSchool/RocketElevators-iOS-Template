//
//  Profile3ViewController.swift
//  UI Pro For IOS
//
//  Created by Anthony on 14/03/2018.
//  Copyright © 2018 Mavsoft. All rights reserved.
//

import UIKit

class Profile3ViewController: UIViewController {

    let randomImage:[String]! = ["snow","cooking","travel","bus","pots"]
    
    @IBOutlet weak var collectionViewPosts: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewPosts.delegate = self
        collectionViewPosts.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension Profile3ViewController:UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return randomImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionViewPosts.dequeueReusableCell(withReuseIdentifier: "PostsCell", for: indexPath) as! Profile1CollectionViewCell
        
        cell.ivPost.image = UIImage(named: randomImage[indexPath.row])
        
        return cell
    }
    
}
