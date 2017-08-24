//
//  ViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 20/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate
{

    var dataArary = ["UIButton","Image-View" , "UILabel" , "TextField" ,"MAP - View" , "UITableView- custom cell" ,"Segment-Control" , "Slider" , "Switch", "Progress-View ", "Date Picker" , "Picker View" , "Webview" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "IOS-Components"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArary.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell!
        cell?.textLabel?.text = dataArary[indexPath.row]
        cell?.textLabel?.textAlignment = .center
        return cell!
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
             self.performSegue(withIdentifier: "buttonController", sender: indexPath)
       case 1:
        self.performSegue(withIdentifier: "imageController", sender: indexPath)

        case 2:
            self.performSegue(withIdentifier: "labelController", sender: indexPath)
        case 3:
            self.performSegue(withIdentifier: "TextFieldController", sender: indexPath)
            
        case 4:
            self.performSegue(withIdentifier: "mapController", sender: indexPath)
        case 5 :
             self.performSegue(withIdentifier: "customTableController", sender: indexPath)
        case 6:
            self.performSegue(withIdentifier: "segmentViewController", sender: indexPath)
        case 7:
            self.performSegue(withIdentifier: "sliderViewController", sender: indexPath)
        case 8:
            self.performSegue(withIdentifier:"switchViewController", sender: indexPath)
        case 9:
            self.performSegue(withIdentifier: "progressViewController", sender: indexPath)
        case 10:
            self.performSegue(withIdentifier: "datepickerViewController", sender: indexPath)
        case 11:
            self.performSegue(withIdentifier: "pickerViewController", sender: indexPath)
        case 12:
            self.performSegue(withIdentifier: "webViewController", sender: indexPath)
        default:
            print("no action")
        }
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "buttonController" {
            _ = (segue.destination as? buttonViewController)
        }
        else if segue.identifier == "imageController" {
            _ = (segue.destination as? ImageViewController)
        }
        else if segue.identifier == "labelController" {
            _ = (segue.destination as? labelViewController)
        }
        else if segue.identifier == "TextFieldController"{
        
            _ = (segue.destination as? TextFieldViewController)
        }
        else if segue.identifier == "mapController"{
        _ = (segue.destination as? MapViewController)
        }
        else if segue.identifier == "customTableController"{
        _ = segue.destination as? customTableViewController
        }
        else if segue.identifier == "segmentViewController"{
        _ = segue.destination as? segmentViewController
        }else if segue.identifier == "sliderViewController"{
        _ = segue.destination as? sliderViewController
        }else if segue.identifier == "switchViewController"{
        _ = segue.destination as? switchViewController
        }else if segue.identifier == "progressViewController"{
        _ = segue.destination as? progressViewController
        }else if segue.identifier == "datepickerViewController"{
        _ = segue.destination as? datepickerViewController
        }
        else if segue.identifier == "pickerViewController"{
        _ = segue.destination as? pickerViewController
        }
        else if segue.identifier == "webViewController"{
        _ = segue.destination as? webViewController
        }
        
    }
    
    
}

