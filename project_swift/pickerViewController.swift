//
//  pickerViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 24/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class pickerViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var pickerSelectionButton: UIButton!
    @IBOutlet weak var pickerData: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    var singleSelction : Bool = false
    
    var multipleDataValues: [[String]] = [[String]]()
    
    var singleDataArray = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        singleSelction = true
        multipleDataValues = [["1", "2", "3", "4"],
                            ["a", "b", "c", "d"],
                            ["!", "#", "$", "%"],
                            ["w", "x", "y", "z"]]
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changePicker(_ sender: UIButton) {

        if singleSelction {
            pickerSelectionButton.setTitle("multi Picker", for: .normal)
            singleSelction = false
        }else{
            pickerSelectionButton.setTitle("Single picker", for: .normal)
            singleSelction = true
        }
        
        picker.reloadAllComponents()
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if singleSelction {
            return 1
            
        }
        return 4
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if singleSelction {
            pickerData.text = singleDataArray[row]
            return singleDataArray[row]
           
        }
        
     
        pickerData.text = multipleDataValues[component][row]
        return multipleDataValues[component][row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if  singleSelction {
            return singleDataArray.count
        }
        return multipleDataValues.count
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
