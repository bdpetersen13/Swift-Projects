//
//  ClipboardHistoryViewController.swift
//  Clipper
//
//  Created by Brandon Petersen on 5/4/23.
//

import UIKit

class ClipboardHistoryViewController: UITableViewController {

    var clipboardHistory: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let pasteboard = UIPasteboard.general

        if let items = pasteboard.items, let item = items.first(where: { $0.types.contains(UIPasteboard.Name(rawValue: "public.text")) }), let history = item.string {
            clipboardHistory.append(history)
        }

        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clipboardHistory.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = clipboardHistory[indexPath.row]
        return cell
    }

}
