//
//  ViewController.swift
//  Clipper
//
//  Created by Brandon Petersen on 4/30/23.
//

import UIKit

class EraseClipboardViewController: UIViewController {

    @IBAction func eraseClipboard(_ sender: UIButton) {
        let pasteboard = UIPasteboard.general
                 pasteboard.string = ""
                 clipboardLabel.isHidden = false
                 
                 let alertController = UIAlertController(title: "Clipboard Erased!", message: nil, preferredStyle: .alert)
                 let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                 alertController.addAction(okAction)
                 present(alertController, animated: true, completion: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clipboardLabel.isHidden = true
        addButtonBorder()
    }

    @IBOutlet weak var eraseButton: UIButton!
    @IBOutlet weak var clipboardLabel: UILabel!
    

    private func addButtonBorder() {
        eraseButton.layer.borderWidth = 2.0
        eraseButton.layer.cornerRadius = 36.0
        eraseButton.layer.masksToBounds = true
    }
}

