//
//  SecondViewController.swift
//  Delegate
//
//  Created by Jack Wong on 2018/09/13.
//  Copyright © 2018 Jack Wong. All rights reserved.
//

import UIKit

protocol ChangeName: class {
    func change(name: String)
    func printText()
}

class SecondViewController: UIViewController {

    weak var delegate: ChangeName?
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func popBack(_ sender: Any) {
        delegate?.change(name: "Josh")
        delegate?.printText()
        navigationController?.popViewController(animated: true)
    }
    
}
