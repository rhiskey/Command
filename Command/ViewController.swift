//
//  ViewController.swift
//  Command
//
//  Created by Владимир Киселев on 02.02.2022.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    let commandExecutor = CommandExecutor()
    var cmdUndo: StringUndoCommand?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        textField.delegate = self
    }

    @IBAction func undoAction(_ sender: Any) {
        textField.text = commandExecutor.undoLast()
    }
    
}


extension ViewController: UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        fsd
        cmdUndo = StringUndoCommand(argument: textField.text!)
        commandExecutor.addCommand(command: cmdUndo!)
        commandExecutor.forward(string)
        
        return true
    }
    
}
