//
//  TextFieldViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 22/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var firstTxt: UITextField!
    @IBOutlet weak var secondTxt: UITextField!
    @IBOutlet weak var thirdTxt: UITextField!
    @IBOutlet weak var displayNameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func showFullName(_ sender: UIButton) {
        
        displayNameLbl.text = firstTxt.text! + " " + secondTxt.text! + " " + thirdTxt.text!
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        
        if textField == firstTxt && (firstTxt.text?.isEmpty)!  {
            showAlert()
        }
        if textField == secondTxt && (secondTxt.text?.isEmpty)!  {
            showAlert()
        }
        if textField == thirdTxt && (thirdTxt.text?.isEmpty)!  {
            showAlert()
        }
        
        
      
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == firstTxt{
        secondTxt.becomeFirstResponder()
        }
        else if textField == secondTxt{
        thirdTxt.becomeFirstResponder()
        }
        else if textField == thirdTxt{
        thirdTxt.resignFirstResponder()
        }
        
        return true
    }
    
    
    func showAlert() {
    
        let alertcontroller = UIAlertController.init(title: "Notification", message: "Please enter correct details", preferredStyle: .alert)
        
        let alert = UIAlertAction.init(title: "OK", style: .default, handler: nil)
        
        alertcontroller.addAction(alert)
        present(alertcontroller, animated: true, completion: nil)
        
        
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
