//
//  ViewController.swift
//  RandomQuoteGenerator
//
//  Created by Davis Jordan on 12/27/17.
//  Copyright © 2017 Davis Jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlet for text field
    @IBOutlet weak var QuoteView: UITextView!
    
    //DLList for templates
    var templates:DLList?

    //Node to store current location in list
    var current:DLNode?

    //blank spaces to be filled
    var blank1:String = "[blank]"
    var blank2:String = "[blank]"

    override func viewDidLoad()
    {
        super.viewDidLoad()

        //make quote read only
        QuoteView.isEditable = false

        //welcome message
        QuoteView.text = "Hello!\n Click the arrow buttons to choose a template, and then click \"Generate!\"."

        //init templates list
        templates = DLList()

        //load templates to list
        loadTemplates(list:templates!)
        DLList.printList(list:templates!)

        //init current
        current = templates?.head
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Action for when right button is pressed
    @IBAction func rightButtonPressed(_ sender:UIButton)
    {
        //move current to next location
        current = current?.next

        //make sure current is not head
        if current?.message == templates?.head.message
        {
            current = current?.next
        }

        //update text
        QuoteView.text = current?.message
    }
    
    //Action for when left button is pressed
    @IBAction func leftButtonPressed(_ sender:UIButton)
    {
        //move current to previous location
        current = current?.prev

        //make sure current is not head
        if current?.message == templates?.head.message
        {
            current = current?.prev
        }

        //update text
        QuoteView.text = current?.message
    }
    
    //Action for when Generate is pressed
    @IBAction func generatePressed(_ sender:UIButton)
    {
        
    }

    //adds nodes to templates
    //Numbers are the node's subscript in the list
    func loadTemplates(list:DLList)
    {
        //add first template
        //9
        var  n:DLNode? = DLNode(value:"The " + blank1 + " epidemic is caused by " + blank2 + ".")
        list.insertFront(node:n)

        //add second template
        //8
        n = nil
        n = DLNode(value:"The only way to a person's " + blank1 + " is with your " + blank2 + ".")
        list.insertFront(node:n)

        //add third template
        //7
        n = nil
        n = DLNode(value:"Always " + blank1 + " your " + blank2 + ".")
        list.insertFront(node:n)

        //add fourth template
        //6
        n = nil
        n = DLNode(value:blank1 + " people always " + blank2 + ".")
        list.insertFront(node:n)

        //add fifth template
        //5
        n = nil
        n = DLNode(value:"To live is to " + blank1 + " your " + blank2 + ".")
        list.insertFront(node:n)

        //add sixth template
        //4
        n = nil
        n = DLNode(value:blank1 + " a " + blank2 + ". You won't regret it.")
        list.insertFront(node:n)

        //add seventh template
        //3
        n = nil
        n = DLNode(value:"Don't ponder the " + blank1 + ". You will only find " + blank2 + ".")
        list.insertFront(node:n)

        //add eighth template
        //2
        n = nil
        n = DLNode(value:"There are bad ways to " + blank1 + " and good ways to " + blank2 + ", but it isn't always obvious which is which.")
        list.insertFront(node:n)

        //add ninth template
        //1
        n = nil
        n = DLNode(value:"Whatever you can " + blank1 + ", you can " + blank2 + ".")
        list.insertFront(node:n)

        //add tenth template
        //0
        n = nil
        n = DLNode(value:"It is in our " + blank1 + " moments where we must focus to see the " + blank2 + ".")
        list.insertFront(node:n)

    }

}
