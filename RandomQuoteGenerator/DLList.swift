//
// Created by Davis Jordan on 12/27/17.
// Copyright (c) 2017 Davis Jordan. All rights reserved.
//

import Foundation

//Struct that will be used for every node of the Doubly linked list
//the message variable will be used to store the templates for the quotes, one template per node
class DLNode
{
    //template storage
    var message : String

    //next and prev for DLList
    var next : DLNode?
    var prev : DLNode?

    //initializers
    init()
    {
        message = ""
        next = nil
        prev = nil
    }
    init(value:String)
    {
        message = value
        next = nil
        prev = nil
    }

    //replaces every instance of "from" in message to "to"
    func replaceString(from:String, to:String)
    {
        //make sure "from" exists in message
        if message.range(of:from) == nil
        {
            print("ERROR: couldn't find " + from + " in message.")
            return
        }

        //change "from" to "to"
        message = message.replacingOccurrences(of:from, with:to)
    }
}


//class for doubly linked list that will store the templates for the quotes
class DLList
{
    //head of list
    var head : DLNode

    //var to store number of nodes not including head
    var length : Int

    //initializer
    init()
    {
        //init head
        head = DLNode()

        //init length
        length = 0

        //init vars in head
        head.message = ""
        head.next = head
        head.prev = head
    }

    //prints message from every node in list not including head of course
    //used for debugging only
    static func printList(list:DLList)
    {
        print("List:\n")
        //check if list is empty
        if list.length == 0
        {
            print("{EMPTY LIST}\n")
        }

        //initialize a counter and a node to traverse the list
        var count:Int = 0
        var e:DLNode? = list.head.next

        //keep going until head is reached
        while count < list.length
        {
            //print message
            print(String(count) + ": " + e!.message + "\n")

            //increment count and move node to next
            count = count + 1
            e = e?.next
        }

    }

    //inserts a node at the front of the list
    func insertFront(node:DLNode?)
    {
        //add node to front
        node?.next = head.next
        head.next?.prev = node
        node?.prev = head
        head.next = node

        //increment length
        length = length + 1
    }
}