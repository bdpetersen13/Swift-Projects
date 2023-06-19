//
//  ClipboardCell.swift
//  Clipper2
//
//  Created by Brandon Petersen on 5/3/23.
//

import UIKit

class ClipboardCell: UITableViewCell {

    @IBOutlet weak var clipboardContentLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    var editButtonAction: (() -> Void)?
    var deleteButtonAction: (() -> Void)?
    
    @IBAction func editButtonTapped(_ sender: UIButton) {
        editButtonAction?()
    }
    
    @IBAction func deleteButtonTapped(_ sender: UIButton) {
        deleteButtonAction?()
    }

}
