//
//  ToDoTableViewController.swift
//  Guided Project_List_Ev3iOS
//
//  Created by Angel Meza on 14/05/24.
//

import UIKit
import Foundation

class ToDoTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    var toDos = [ToDo]()
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt
                            indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
                                                    "ToDoCellIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = toDo.title
        cell.contentConfiguration = content
        return cell
    }
    
}
