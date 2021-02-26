//
//  ViewController.swift
//  Own_Sites
//
//  Created by Vijay Bhaskar on 26/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    
    @IBAction func signInClicked(_ sender: Any) {
        let destination = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
            let backItem = UIBarButtonItem()
            backItem.title = "Enter Mobile Number"
            navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
        
        self.navigationController?.pushViewController(destination, animated: true)
    }
    
    
    @IBAction func skipClicked(_ sender: Any) {
    }
    

}

