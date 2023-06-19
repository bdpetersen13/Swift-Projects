//
//  ViewController.swift
//  Clipper2
//
//  Created by Brandon Petersen on 5/3/23.
//

import UIKit

class EraseClipboardViewController: UIViewController {
    @IBAction func eraseClipboard(_ sender: UIButton) {
            let pasteboard = UIPasteboard.general
            pasteboard.string = ""
            
            let alertController = UIAlertController(title: "Clipboard Erased!", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    
}

