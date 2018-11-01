//
//  ViewController.swift
//  Delegate
//
//  Created by Jack Wong on 2018/09/13.
//  Copyright © 2018 Jack Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var name = "Jack"
    @IBOutlet var label: UILabel!
    @IBAction func second(_ sender: Any) {
        guard let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func viewWillAppear(_ animated: Bool) {
        label.text = name
    }

}

extension ViewController: ChangeName {
    func printText() {
        print(#function)
    }
    
    func change(name: String) {
        
    }
    
   
    
}
