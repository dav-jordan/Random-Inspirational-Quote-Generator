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

        //load templates to list
        loadTemplates(list:templates!)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //adds nodes to templates
    //TODO: Add comments with subscripts after adding templates
    //TODO: Add 5 more templates to make it an even 10
    //*The way this is going to work is I am going to replace blank1 and blank2 with random words when
    //a button is pressed*
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
        templates?.insertFront(node:n)

        //print for testing
        DLList.printList(list:templates!)

        //add third template
        n = nil
        n = DLNode(value:"Always " + blank1 + " your " + blank2 + ".")
        templates?.insertFront(node:n)

        //add fourth template
        n = nil
        n = DLNode(value:blank1 + " people always " + blank2 + ".")
        templates?.insertFront(node:n)

        //add fifth template
        n = nil
        n = DLNode(value:"To live is to " + blank1 + " your " + blank2 + ".")
        templates?.insertFront(node:n)

        //add sixth template
        n = nil
        n = DLNode(value:blank1 + " a " + blank2 + ". You won't regret it.")
        templates?.insertFront(node:n)

        //add seventh template
        n = nil
        n = DLNode(value:"Don't ponder the " + blank1 + ". You will only find " + blank2 + ".")
        templates?.insertFront(node:n)

        //add eighth template
        n = nil
        n = DLNode(value:"There are bad ways to " + blank1 + " and good ways to " + blank2 + ", but it isn't always obvious which is which.")
        templates?.insertFront(node:n)

        //add ninth template
        n = nil
        n = DLNode(value:"Whatever you can " + blank1 + ", you can " + blank2 + ".")
        templates?.insertFront(node:n)


    }

}
