//
//  Profile2ViewController.swift
//  UI Pro For IOS
//
//  Created by Anthony on 14/03/2018.
//  Copyright © 2018 Mavsoft. All rights reserved.
//

import UIKit
import Toast_Swift

class Profile2ViewController: UIViewController {

    @IBAction func LikesTapped(_ sender: UIButton) {
        self.view.makeToast("Likes Tapped", duration: 1.5, position: .center)
    }

    @IBAction func FollowersTapped(_ sender: UIButton) {
        self.view.makeToast("Followers Tapped", duration: 1.5, position: .center)
    }
    
    @IBAction func ViewsTapped(_ sender: UIButton) {
        self.view.makeToast("Views Tapped", duration: 1.5, position: .center)
    }
    
    @IBAction func PostsTapped(_ sender: UIButton) {
        self.view.makeToast("Posts Tapped", duration: 1.5, position: .center)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
