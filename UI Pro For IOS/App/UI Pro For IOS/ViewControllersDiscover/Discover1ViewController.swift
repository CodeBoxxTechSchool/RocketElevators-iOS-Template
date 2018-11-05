//
//  Discover1ViewController.swift
//  UI Pro For IOS
//
//  Created by Anthony on 15/03/2018.
//  Copyright © 2018 Mavsoft. All rights reserved.
//

import UIKit
import Toast_Swift

class Discover1ViewController: UIViewController {

    @IBOutlet weak var tfSearchView: UITextField!
    
    @IBAction func searchTapped(_ sender: UIButton) {
        self.view.makeToast("Search Tapped", duration: 1.5, position: .center)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
