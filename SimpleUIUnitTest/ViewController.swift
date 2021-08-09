//
//  ViewController.swift
//  SimpleUIUnitTest
//
//  Created by NhutHuynh on 8/9/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        
        let ferrari = Car(type: .Sport,
                          transmissionMode: .Drive)
        
        ferrari.start(minutes: 120)
        
        print(ferrari.miles) // => 140
    }
}

