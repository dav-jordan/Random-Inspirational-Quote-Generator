//
// Created by Davis Jordan on 1/5/18.
// Copyright (c) 2018 Davis Jordan. All rights reserved.
//

import Foundation

//class that will be used to make a group of words and get a word from that group
class WordList
{
    //array to store words
    var words:[String]

    //size of word array
    var length:Int

    //initializer
    init()
    {
        length = 0
    }

    //used to add a word to words array
    func addWord(add:String)
    {
        words.append(add)
        length = length + 1
    }
}