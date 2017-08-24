//
//  buttonViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 21/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class buttonViewController: UIViewController {

    @IBOutlet var ClickableButton: [UIButton]!

    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        for item in ClickableButton {
            item.backgroundColor = .white
        }
        var title = sender.titleLabel?.text!
        title = title?.lowercased()
        displayLabel.text = title
        sender.backgroundColor = .red
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
