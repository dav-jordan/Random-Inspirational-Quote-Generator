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

    //blank spaces to be filled
    var blank1:String = "[blank]"
    var blank2:String = "[blank]"

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

    //adds nodes to templates
    func loadTemplates(list:DLList)
    {
        //add first template
        var  n:DLNode? = DLNode(value:"The " + blank1 + " epidemic is caused by " + blank2 + ".")
        templates?.insertFront(node:n)

        //print for testing
        DLList.printList(list:templates!)

        //add second template
        n = nil
        n = DLNode(value:"The only way to a person's " + blank1 + " is with your " + blank2 + ".")

        //print for testing
        DLList.printList(list:templates!)

    }

}
