//
//  ViewController.swift
//  Table Cells
//
//  Created by Aaron Dougher on 3/2/18.
//  Copyright © 2018 Erin Dougher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let cellTableIdentifier = "CellTableIdentifier"
    @IBOutlet var tableView: UITableView!
    
    let computers = [["Name" : "MacBook Air", "Color" : "Silver"], ["Name" : "MacBook Pro", "Color" : "Silver"], ["Name" : "iMac", "Color" : "Silver"], ["Name" : "MacMini", "Color" : "Silver"], ["Name" : "Mac Pro", "Color" : "Black"]]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return computers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellTableIdentifier, for: indexPath) as! NameAndColorCell
        
        let rowData = computers[indexPath.row]
        cell.name = rowData["Name"]!
        cell.color = rowData["Color"]!
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.register(NameAndColorCell.self, forCellReuseIdentifier: cellTableIdentifier)
        
        let xib = UINib(nibName: "NameAndFile", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: cellTableIdentifier)
        tableView.rowHeight = 65
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

