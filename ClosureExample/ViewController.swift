//
//  ViewController.swift
//  ClosureExample
//
//  Created by Ahmed Zaghloul on 5/5/19.
//  Copyright © 2019 Ahmed Zaghloul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlertTapped(_ sender: UIButton) {
        let alert = AlertView(title: "Hello", message: "It's Just Start", sourceView: sender)
        
        self.present(alert, animated: true, completion: nil)
    }

}

