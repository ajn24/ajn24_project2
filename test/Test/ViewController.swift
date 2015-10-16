//
//  ViewController.swift
//  Test
//
//  Created by Noe,Anthony on 10/15/15.
//  Copyright © 2015 Noe,Anthony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var RO1: UITextField!
    @IBOutlet weak var RO2: UITextField!
    @IBOutlet weak var RO3: UITextField!
    @IBOutlet weak var RO4: UITextField!
    @IBOutlet weak var RO5: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let path = NSBundle.mainBundle().pathForResource("myList", ofType: "plist")  else {
            print("Invalid path for plist")
            return
        }
        
        
        let data = NSDictionary(contentsOfFile: path) as? Dictionary<String, String>
        
        RO1.text = data?["Item 1"]
        RO2.text = data?["Item 2"]
        RO3.text = data?["Item 3"]
        RO4.text = data?["Item 4"]
        RO5.text = data?["Item 5"]
        
        
        
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

