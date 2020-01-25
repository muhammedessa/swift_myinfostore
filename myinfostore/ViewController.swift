//
//  ViewController.swift
//  myinfostore
//
//  Created by Muhammed Essa on 1/18/20.
//  Copyright © 2020 Muhammed Essa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textEditNames: UITextField!
    
    @IBOutlet weak var viewLabel: UILabel!
    
    @IBAction func saveBtn(_ sender: Any) {
        UserDefaults.standard.set(textEditNames.text, forKey: "names")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let NamesObject = UserDefaults.standard.object(forKey:"names" )
        if let nameFound = NamesObject as? String {
            viewLabel.text = nameFound
        }
    }


}

