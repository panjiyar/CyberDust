//
//  TVViewController.swift
//  CyberDust
//
//  Created by Suchit Panjiyar on 10/30/15.
//  Copyright © 2015 Suchit. All rights reserved.
//

import UIKit

class TVViewController: UIViewController {

    var cm = UIImage.init(named: "cm")
    var luna = UIImage.init(named: "luna")
    var dr = UIImage.init(named: "dr")
    var ls = UIImage.init(named: "ls")
    var sk = UIImage.init(named: "sk")
    var nameArray = ["Crystal Maiden", "Drow Ranger", "Life Stealer", "Luna", "Sand King"]
    var ImgArray : [UIImage?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "cell")
        ImgArray = [cm, dr, ls, luna, sk]
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var tableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ImgArray.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell : TableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as! TableViewCell;
        cell.name.text = nameArray[indexPath.row]
        cell.img.image = ImgArray[indexPath.row];
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let vc = InfoViewController(nibName:"InfoViewController", bundle:nil)
        vc.namely =  nameArray[indexPath.row]
        vc.img = ImgArray[indexPath.row]!
        presentViewController(vc, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 82
    }

}
