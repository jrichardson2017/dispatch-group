//
//  ListTableViewController.swift
//  DispatchGroup
//
//  Created by Justin Richardson on 2018-09-18.
//  Copyright © 2018 Justin Richardson. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
        
    // MARK: Variables
    let groupA = ["item 1", "item 2"]
    let groupB = ["item 3", "item 4"]
    let groupC = ["item 5", "item 6"]
    
    var items = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // MARK: Table View
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListItem", for: indexPath)
        
        let cellLabel = cell.viewWithTag(1000) as! UILabel
        
        cellLabel.text = items[indexPath.row]
        
        return cell
    }
    
    // MARK: Functions
    func getGroupA() {
        print("got A")
        items.append(contentsOf: self.groupA)
    }
    
    func getGroupB() {
        print("got B")
        items.append(contentsOf: self.groupB)
    }
    
    func getGroupC() {
        print("got C")
        items.append(contentsOf: self.groupC)
    }
    
}

