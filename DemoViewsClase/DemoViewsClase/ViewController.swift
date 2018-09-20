//
//  ViewController.swift
//  DemoViewsClase
//
//  Created by Adrian on 18/09/2018.
//  Copyright © 2018 Adrián Blázquez León. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funcView: FunctionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    funcView.scale = 0.3
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

