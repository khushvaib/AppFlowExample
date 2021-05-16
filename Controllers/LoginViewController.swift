//
//  LoginViewController.swift
//  AppFlowExample
//
//  Created by Vaibhav Sharma on 16/05/21.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setTitle(title: "Login")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: UIButton){
        
        UIView.transition(with: (kAppDelegate?.window)!, duration: 0.8, options: .transitionFlipFromLeft, animations: {
            kAppDelegate?.window?.rootViewController = Helper.createTabbarviewController()
        }, completion: nil)
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
