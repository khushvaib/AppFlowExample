//
//  ProfileViewController.swift
//  AppFlowExample
//
//  Created by Vaibhav Sharma on 16/05/21.
//

import UIKit

let kAppDelegate = UIApplication.shared.delegate as? AppDelegate

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setTitle(title: "Profile")
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logout(_:)))
        // Do any additional setup after loading the view.
    }


    @objc func logout(_ sender: UIBarButtonItem){
        let nextView = LoginViewController(nibName: "LoginViewController", bundle: nil)
        UIView.transition(with: (kAppDelegate?.window)!, duration: 0.8, options: .transitionFlipFromRight, animations: {
            kAppDelegate?.window?.rootViewController = UINavigationController(rootViewController: nextView)
        }, completion: nil)
    }

}
