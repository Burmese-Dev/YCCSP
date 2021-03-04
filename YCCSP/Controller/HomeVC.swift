//
//  ViewController.swift
//  YCCSP
//
//  Created by Zay Yar Htun on 3/4/21.
//

import UIKit

class HomeVC: UIViewController {
    let homeVM = HomeVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        homeVM.getSPList()
    }
}

