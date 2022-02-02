//
//  BaseCommand.swift
//  Command
//
//  Created by Владимир Киселев on 02.02.2022.
//

protocol BaseCommand{
    func undo() -> String
    func forward(_ str: String)
}
