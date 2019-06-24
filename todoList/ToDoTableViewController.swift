//
//  ToDoTableViewController.swift
//  todoList
//
//  Created by Apple on 6/24/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController
{
    var toDos : [ToDo] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        toDos = createToDos()
    }
    func createToDos() -> [ToDo]
    {
        
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        // important is set to false by default
        
        return [swift, dog]
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
        if toDo.important
        {
            cell.textLabel?.text = "❗️" + toDo.name
        }
        else
        {
            cell.textLabel?.text = toDo.name
        }
        
        return cell
    }
}
