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

    //Node to store current location in list and int to store current subscript
    var current:DLNode?
    var currSub:Int = -1

    //blank spaces to be filled
    var blank1:String = "[blank1]"
    var blank2:String = "[blank2]"

    //word lists to be used to fill blanks
    var nouns:WordList?
    var verbs:WordList?
    var adjectives:WordList?

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

        //init current
        current = templates?.head

        //init word lists
        nouns = WordList()
        verbs = WordList()
        adjectives = WordList()
        generateWordLists()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Action for when right button is pressed
    @IBAction func rightButtonPressed(_ sender:UIButton)
    {
        //reset message
        templates?.getIth(i: currSub).resetString()

        //move current to next location
        current = current?.next

        //increment sub
        currSub = currSub + 1

        //make sure current is not head
        if current?.message == templates?.head.message
        {
            current = current?.next
            currSub = 0
        }

        //update text
        QuoteView.text = current?.message
    }
    
    //Action for when left button is pressed
    @IBAction func leftButtonPressed(_ sender:UIButton)
    {
        //reset message
        templates?.getIth(i: currSub).resetString()

        //move current to previous location
        current = current?.prev

        //decrement sub
        currSub = currSub - 1

        //make sure current is not head
        if current?.message == templates?.head.message
        {
            current = current?.prev
            currSub = 9
        }

        //update text
        QuoteView.text = current?.message
    }

    //Action for when Generate is pressed
    //need different ones for each subscript because not all of them
    //use the same two types of words
    //TODO: add temps to be able to generate again before switching off
    @IBAction func generatePressed(_ sender:UIButton)
    {
        //check currSub so the correct template is modified
        if currSub == -1
        {
            QuoteView.text = "I said you need to pick a template before you generate a quote."
            return
        }
        if currSub == 0
        {
            templates?.getIth(i: 0).replaceString(from: blank1, to: adjectives!.randomWord())
            templates?.getIth(i: 0).replaceString(from: blank2, to: nouns!.randomWord())
        }
        else if currSub == 1
        {
            templates?.getIth(i: 1).replaceString(from: blank1, to: verbs!.randomWord())
            templates?.getIth(i: 1).replaceString(from: blank2, to: verbs!.randomWord())
        }
        else if currSub == 2
        {
            templates?.getIth(i: 2).replaceString(from: blank1, to: verbs!.randomWord())
            templates?.getIth(i: 2).replaceString(from: blank2, to: verbs!.randomWord())
        }
        else if currSub == 3
        {
            templates?.getIth(i: 3).replaceString(from: blank1, to: nouns!.randomWord())
            templates?.getIth(i: 3).replaceString(from: blank2, to: nouns!.randomWord())
        }
        else if currSub == 4
        {
            templates?.getIth(i: 4).replaceString(from: blank1, to: verbs!.randomWord())
            templates?.getIth(i: 4).replaceString(from: blank2, to: nouns!.randomWord())
        }
        else if currSub == 5
        {
            templates?.getIth(i: 5).replaceString(from: blank1, to: verbs!.randomWord())
            templates?.getIth(i: 5).replaceString(from: blank2, to: nouns!.randomWord())
        }
        else if currSub == 6
        {
            templates?.getIth(i: 6).replaceString(from: blank1, to: adjectives!.randomWord().capitalized)
            templates?.getIth(i: 6).replaceString(from: blank2, to: verbs!.randomWord())
        }
        else if currSub == 7
        {
            templates?.getIth(i: 7).replaceString(from: blank1, to: verbs!.randomWord())
            templates?.getIth(i: 7).replaceString(from: blank2, to: nouns!.randomWord())
        }
        else if currSub == 8
        {
            templates?.getIth(i: 8).replaceString(from: blank1, to: nouns!.randomWord())
            templates?.getIth(i: 8).replaceString(from: blank2, to: nouns!.randomWord())
        }
        else if currSub == 9
        {
            templates?.getIth(i: 9).replaceString(from: blank1, to: nouns!.randomWord())
            templates?.getIth(i: 9).replaceString(from: blank2, to: nouns!.randomWord())
        }
        else 
        {
            print("ERROR: currSub not found")
            return
        }
        //update QuoteView text
        QuoteView.text = templates?.getIth(i: currSub).message
    }

    //Generates the random word lists
    func generateWordLists()
    {
        //add nouns
        nouns?.addWord(add: "narcissism")
        nouns?.addWord(add: "grill")
        nouns?.addWord(add: "text")
        nouns?.addWord(add: "gauntlet")
        nouns?.addWord(add: "health")
        nouns?.addWord(add: "family")
        nouns?.addWord(add: "handsaw")
        nouns?.addWord(add: "plate")
        nouns?.addWord(add: "money")
        nouns?.addWord(add: "past")
        nouns?.addWord(add: "future")
        nouns?.addWord(add: "garbage")
        nouns?.addWord(add: "glove")
        nouns?.addWord(add: "migrant")
        nouns?.addWord(add: "determination")
        nouns?.addWord(add: "assignment")
        nouns?.addWord(add: "efficiency")
        nouns?.addWord(add: "writer")
        nouns?.addWord(add: "line")

        //add verbs
        verbs?.addWord(add: "scratch")
        verbs?.addWord(add: "cough")
        verbs?.addWord(add: "kneel")
        verbs?.addWord(add: "interfere")
        verbs?.addWord(add: "wrestle")
        verbs?.addWord(add: "lock")
        verbs?.addWord(add: "carry")
        verbs?.addWord(add: "appreciate")
        verbs?.addWord(add: "roll")
        verbs?.addWord(add: "measure")

        //add adjectives
        adjectives?.addWord(add: "sturdy")
        adjectives?.addWord(add: "frail")
        adjectives?.addWord(add: "kind")
        adjectives?.addWord(add: "unruly")
        adjectives?.addWord(add: "careless")
        adjectives?.addWord(add: "obscene")
        adjectives?.addWord(add: "defective")
        adjectives?.addWord(add: "venomous")
        adjectives?.addWord(add: "vague")
        adjectives?.addWord(add: "selfish")
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
