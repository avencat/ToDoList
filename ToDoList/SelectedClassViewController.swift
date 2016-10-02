//
//  SelectedClassViewController.swift
//  ToDoList
//
//  Created by Axel Vencatareddy on 02/10/2016.
//  Copyright © 2016 Axel Vencatareddy. All rights reserved.
//

import UIKit

class SelectedClassViewController: UIViewController {

  @IBOutlet weak var nameLabel: UILabel!
  var task : Task? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      if task!.important {
        nameLabel.text = "❗️\(task!.name!)"
      } else {
        nameLabel.text = task!.name!
      }
    }
  
  @IBAction func deleteTask(_ sender: AnyObject) {
    // Delete a task
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    context.delete(task!)
    (UIApplication.shared.delegate as! AppDelegate).saveContext()
    
    // Pop back
    navigationController!.popViewController(animated: true)
  }

}
