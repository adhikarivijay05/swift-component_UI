//
//  datepickerViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 24/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class datepickerViewController: UIViewController {

    @IBOutlet weak var datePickerView: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss z"
        let date = dateFormatter.date(from: "\(sender.date)")
        dateFormatter.dateFormat = "dd-MMM-yyyy"
        
        dateLabel.text = dateFormatter.string(from: date!)
        
        
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
