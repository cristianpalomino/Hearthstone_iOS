//
//  ViewController.swift
//  Hearthstone
//
//  Created by Cristian on 1/05/16.
//  Copyright © 2016 Cristian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var classes = [String]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(
            self,
            selector: #selector(ViewController.infoUpdated),
            name: Constants.NotificationKey.InfoUpdated ,
            object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func infoUpdated(){
        self.classes = Session.current.info.classes.classes
        self.tableView.reloadData()
    }
}

extension ViewController : UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.classes.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let classe = self.classes[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        cell?.textLabel?.text = classe
        return cell!
    }
}

extension ViewController : UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let classe = self.classes[self.tableView.indexPathForSelectedRow!.row]
        print(classe)
    }
}

