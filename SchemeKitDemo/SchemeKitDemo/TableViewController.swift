//
//  ViewController.swift
//  SchemeKitDemo
//
//  Created by Daniel Chick on 6/21/18.
//  Copyright © 2018 Daniel Chick. All rights reserved.
//

import UIKit
import SchemeKit

class TableViewController: UITableViewController {
    var broswerList: [BrowserNames] = []
    var socialList: [SocialNames] = []
    var entertainmentList: [EntertainmentNames] = []

    @IBOutlet var TypeSwitcher: UISegmentedControl!
    
    @IBAction func onTypeSwitched(_ sender: UISegmentedControl) {
        tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        obtainBrowserList()
        obtainSocialList()
        obtainEntertainmentList()

        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func obtainBrowserList() {
        broswerList = BrowserScheme.listOfBrowsersInstalled()
    }
    
    private func obtainSocialList() {
        socialList = SocialScheme.listOfSocialAppsInstalled()
    }
    
    private func obtainEntertainmentList() {
        entertainmentList = EntertainmentScheme.listOfEntertainmentAppsInstalled()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getSizeOfList()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = getRowText(row: indexPath.row)
        
        return cell
    }
    
    private func getRowText(row: Int) -> String {
        let index = TypeSwitcher.selectedSegmentIndex
        
        if index == 0 {
            return broswerList[row].rawValue
        } else if index == 1 {
            return socialList[row].rawValue
        } else {
            return entertainmentList[row].rawValue
        }
    }
    
    private func getSizeOfList() -> Int {
        let index = TypeSwitcher.selectedSegmentIndex
        
        if index == 0 {
            return broswerList.count
        } else if index == 1 {
            return socialList.count
        } else {
            return entertainmentList.count
        }
    }
}

