//
//  ImageViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 21/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var ImageArray = [URL]()
    var counter = 0
    
    
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var ImgView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let path = Bundle.main.resourcePath {
            
            
            
            
            let imagePath = path + "/images"
            let url = NSURL(fileURLWithPath: imagePath)
            let fileManager = FileManager.default
            
            let properties = [URLResourceKey.localizedNameKey,
                              URLResourceKey.creationDateKey, URLResourceKey.localizedTypeDescriptionKey]
            
            do {
                ImageArray = try fileManager.contentsOfDirectory(at: url as URL, includingPropertiesForKeys: properties, options:FileManager.DirectoryEnumerationOptions.skipsHiddenFiles)
                
                
                ImgView.image = createImageFromURL(index: 0)
            } catch let error1 as NSError {
                print(error1.description)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func  createImageFromURL(index : Int) -> UIImage
    {
        let url = (ImageArray[index])
        let data = try? Data(contentsOf: url)
        return UIImage(data: data!)!
    }
    
    
    @IBAction func changeImage(_ sender: UIButton) {
        
        if sender.titleLabel?.text == "Next" {
            if counter == 4 {
                showAlert()
                return;
            }
            ImgView.image = createImageFromURL(index: counter)
            counter += 1
        }
        else if sender.titleLabel?.text == "Previous" {
            if counter == 0 {
                showAlert()
                return;
            }
            ImgView.image = createImageFromURL(index: counter)
            counter -= 1
        }
    }
    
    
    func showAlert(){
        
        let alert = UIAlertController.init(title: "Alert", message: "No More images available", preferredStyle: .actionSheet)
        let defaultAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
        alert.addAction(defaultAction)
        present(alert, animated: true, completion: nil)
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
