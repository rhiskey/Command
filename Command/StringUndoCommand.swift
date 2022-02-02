//
//  StringUndoCommand.swift
//  Command
//
//  Created by Владимир Киселев on 02.02.2022.
//

class StringUndoCommand: BaseCommand{
    private var originalString: String
    private var currentString: String
    
    init(argument: String){
        originalString = argument
        currentString = argument
    }
    
    func printString(){
        print(currentString)
    }
    
    func undo() -> String {
        currentString.removeLast()
        printString()
        return currentString
    }
    
    func forward(_ str: String) {
        currentString.append(str)
        printString()
    }
}
