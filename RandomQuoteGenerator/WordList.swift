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
    var length:UInt32

    //initializer
    init()
    {
        length = 0
        words = [" "]
    }

    //used to add a word to words array
    func addWord(add:String)
    {
        if length == 0
        {
            words[0] = add
            length = 1
        }
        words.append(add)
        length = length + 1
    }

    //returns a random word in words
    func randomWord() -> String
    {
        let sub:Int = Int(arc4random_uniform(length))
        return words[sub]
    }
}