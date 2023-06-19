//
//  ViewController.swift
//  Clipper
//
//  Created by Brandon Petersen on 5/4/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {

        let clipboardHistoryViewController = ClipboardHistoryViewController()
         clipboardHistoryViewController.tabBarItem = UITabBarItem(title: "History", image: nil, tag: 0)
         
        let navigationController = UINavigationController(rootViewController: clipboardHistoryViewController)
         
        self.addChild(navigationController)
        
        let eraseClipboardViewController = EraseClipboardViewController()
         eraseClipboardViewController.tabBarItem = UITabBarItem(title: "Erase", image: nil, tag: 1)
         
        let navigationController2 = UINavigationController(rootViewController: eraseClipboardViewController)
         
        self.addChild(navigationController2)
    }

}
