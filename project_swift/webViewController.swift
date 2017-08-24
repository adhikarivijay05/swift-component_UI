//
//  webViewController.swift
//  project_swift
//
//  Created by Vijay Adhikari on 24/08/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class webViewController: UIViewController {

    @IBOutlet weak var webVw: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let url = NSURL.init(string: "https://www.facebook.com")
        let request = NSURLRequest.init(url: url! as URL)
        webVw.loadRequest(request as URLRequest)
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
