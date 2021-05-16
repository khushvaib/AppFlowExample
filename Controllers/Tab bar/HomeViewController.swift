//
//  HomeViewController.swift
//  AppFlowExample
//
//  Created by Vaibhav Sharma on 16/05/21.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setTitle(title: "Home")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushView(_ sender: UIButton){
        let nextView = LeadingViewController(nibName: "LeadingViewController", bundle: nil)
        self.navigationController?.pushViewController(nextView, animated: true)
    }

}
