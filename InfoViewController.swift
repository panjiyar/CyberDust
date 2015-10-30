//
//  InfoViewController.swift
//  CyberDust
//
//  Created by Suchit Panjiyar on 10/30/15.
//  Copyright © 2015 Suchit. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    
    var namely = String()
    var img = UIImage()
    var ImView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = namely
        self.ImView.image = img

        self.ImView.frame = CGRectMake(self.view.frame.width/2 - 150, self.view.frame.height/2 - 150, 300,300)
        super.view.addSubview(ImView)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBAction func back(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
