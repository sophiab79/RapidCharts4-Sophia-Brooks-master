//
//  ToDetailTableViewController.swift
//  RapidCharts4-Sophia-Brooks
//
//  Created by Sophia on 12/14/20.
//  Copyright © 2020 Sophia. All rights reserved.
//

import UIKit

class ToDetailTableViewController: UITableViewController {

    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    
    
    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var noteView: UITextView!
    
    var toDoItem: ToDoItem!
    
    let notesRowHeight: CGFloat = 200
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if toDoItem == nil {
            toDoItem = ToDoItem(name: "", date: Date(), notes: "") //add in note text???
            
        }
        
        nameField.text = toDoItem.name
        datePicker.date = toDoItem.date
        noteView.text = toDoItem.notes
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    
    
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        toDoItem = ToDoItem(name: nameField.text!, date: datePicker.date, notes: noteView.text)
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
        
    }
    
    

    // MARK: - Table view data source

    //override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
   //     return 0
  //  }

  //  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
   //     return 0
    }

//}
