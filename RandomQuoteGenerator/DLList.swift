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
    var next : DLNode
    var prev : DLNode

    //initializers
    init()
    {}
    init(value:String)
    {
        message = value
    }

}


//class for doubly linked list that will store the templates for the quotes
class DLList
{
    //head of list
    var head : DLNode

    //number of nodes in list *not including head*
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
    func printList()
    {
        var count:Int = 0
        var e:DLNode = head.next
    }

}