//
//  switchViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 24/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class switchViewController: UIViewController {

    @IBOutlet weak var switchStatus: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func valueChangedSwitch(_ sender: UISwitch) {
        
        if sender.isOn {
            switchStatus.text = "switch is ON"
        }else{
        switchStatus.text = "switch is OFF"
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
