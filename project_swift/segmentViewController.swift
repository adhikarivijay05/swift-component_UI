//
//  segmentViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 23/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class segmentViewController: UIViewController {

    @IBOutlet weak var containerTwo: UIView!
    @IBOutlet weak var containerOne: UIView!
    
    @IBAction func segmentCtrlClicked(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: { 
                self.containerOne.alpha = 0
                self.containerTwo.alpha = 1
            })
        }else{
        UIView.animate(withDuration: 0.5, animations: { 
            self.containerOne.alpha = 1
            self.containerTwo.alpha = 0
        })
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
