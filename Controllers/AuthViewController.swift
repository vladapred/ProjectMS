//
//  AuthViewController.swift
//  ProjectMS
//
//  Created by Влада Предыбайло on 30.06.2022.
//

import UIKit

class AuthViewController: UIViewController {
    var delegate: LoginViewControllerDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func closeVC(_ sender: Any) {
        delegate.closeVC()
    }
    

}
