//
//  ViewController.swift
//  DemoViewsClase
//
//  Created by Adrian on 18/09/2018.
//  Copyright © 2018 Adrián Blázquez León. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FunctionViewDataSource {
// Quieres que te ponga los métodos a
    @IBOutlet weak var funcView: FunctionView!
    @IBOutlet weak var speedView: FunctionView! //Falta conectar
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    funcView.scale = 0.3
    funcView.datasource = self
    funcView.speedView = self
   
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

