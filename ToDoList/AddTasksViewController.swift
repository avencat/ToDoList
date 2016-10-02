//
//  AddTasksViewController.swift
//  ToDoList
//
//  Created by Axel Vencatareddy on 02/10/2016.
//  Copyright © 2016 Axel Vencatareddy. All rights reserved.
//

import UIKit

class AddTasksViewController: UIViewController {
  
  @IBOutlet weak var taskName: UITextField!
  @IBOutlet weak var taskImportant: UISwitch!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  @IBAction func addTask(_ sender: AnyObject) {
    // Create a task and save it to the CoreData
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    let task = Task(context: context)
    task.important = taskImportant.isOn
    task.name = taskName.text!
    (UIApplication.shared.delegate as! AppDelegate).saveContext()

    // Pop back
    navigationController!.popViewController(animated: true)
  }
}
