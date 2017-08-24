//
//  progressViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 24/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class progressViewController: UIViewController {
    @IBOutlet weak var setps: UIStepper!

    @IBOutlet weak var progressPercentage: UILabel!
    
    
    @IBOutlet weak var progressbar: UIProgressView!
    
    var tappedTime: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.progressbar.progress = 0
        self.tappedTime = 0.0

        self.setps.value = 0
        self.setps.stepValue = 10
        
        
        
        // Do any additional setup after loading the view.
    }

    
    
    func stepperClicked(_ sender: UIStepper) {
        
        
        progressPercentage.text = "\(Int(sender.value).description )" + "%"
        self.progressbar.progress = Float(sender.value) / 100
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func progressClicked(_ sender: UIButton) {
        
        
        self.tappedTime += 0.1
        
        
        if self.tappedTime > 1.0 {
            self.progressbar.progress = 1.0
            return;
        }
        progressPercentage.text = "\(self.tappedTime * 100) %"

        self.progressbar.progress = self.tappedTime
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
