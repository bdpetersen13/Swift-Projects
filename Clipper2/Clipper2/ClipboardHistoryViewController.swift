//
//  ClipboardHistoryViewController.swift
//  Clipper2
//
//  Created by Brandon Petersen on 5/3/23.
//

import UIKit

class ClipboardHistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var clipboardHistory: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(ClipboardCell.self, forCellReuseIdentifier: "ClipboardCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        clipboardHistory = UIPasteboard.general.strings ?? []
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clipboardHistory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClipboardCell", for: indexPath) as! ClipboardCell
        
        cell.clipboardContentLabel.text = clipboardHistory[indexPath.row]
        
        cell.editButtonAction = {
            // Handle edit button action
        }
        
        cell.deleteButtonAction = {
            // Handle delete button action
        }
        
        return cell
    }
    
    @IBAction func addClipboardContent(_ sender: UIButton) {
        // Handle add clipboard content button action
    }
    
}

