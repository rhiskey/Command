//
//  CommandExecutor.swift
//  Command
//
//  Created by Владимир Киселев on 02.02.2022.
//

class CommandExecutor{
    private var arrayOfCommand = [BaseCommand]()
    
    func addCommand(command: BaseCommand){
        arrayOfCommand.append(command)
    }
    
    func forward(_ str: String){
        for command in arrayOfCommand{
            command.forward(str)
        }
    }
    
    func undoLast() -> String{
        var title = String()
        for command in arrayOfCommand{
            title = command.undo()
        }
        return title
    }
}
