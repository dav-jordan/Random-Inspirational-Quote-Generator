//
//  ViewController.swift
//  RandomQuoteGenerator
//
//  Created by Davis Jordan on 12/27/17.
//  Copyright © 2017 Davis Jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //DLList for templates
    var templates:DLList?

    override func viewDidLoad()
    {
        super.viewDidLoad()

        //init templates list
        templates = DLList()
    }


    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
