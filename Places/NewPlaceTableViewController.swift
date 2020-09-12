//
//  NewPlaceTableViewController.swift
//  Places
//
//  Created by Danil Belikhov on 12.09.2020.
//  Copyright © 2020 Danil Belikhov. All rights reserved.
//

import UIKit

class NewPlaceTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        

    }

    
    // MARK: Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
  
}

// MARK: Text field delegate

extension NewPlaceTableViewController: UITextFieldDelegate {
    
    // скрываем клавиаутур по нажатию на done
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
