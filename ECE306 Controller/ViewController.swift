//
//  ViewController.swift
//  ECE306 Controller
//
//  Created by John Malatras on 4/24/17.
//  Copyright © 2017 John Malatras. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    var ipAddress = "172.20.10.7"
    @IBOutlet weak var IPTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ForwardButton(_ sender: Any) {
        Alamofire.request("http://" + ipAddress + "/" + "output.cgi?text=.1212F1&submit=Submit")
    }

    @IBAction func RightButton(_ sender: Any) {
        Alamofire.request("http://" + ipAddress + "/" + "output.cgi?text=.1212R9&submit=Submit")
    }
    
    @IBAction func LeftButton(_ sender: Any) {
        Alamofire.request("http://" + ipAddress + "/" + "output.cgi?text=.1212L9&submit=Submit")
    }
    
    @IBAction func ReverseButton(_ sender: Any) {
        Alamofire.request("http://" + ipAddress + "/" + "output.cgi?text=.1212B9&submit=Submit")
    }
    
    @IBAction func StopButton(_ sender: Any) {
        Alamofire.request("http://" + ipAddress + "/" + "output.cgi?text=.1212S1&submit=Submit")
    }
    
    @IBAction func CircleEndButton(_ sender: Any) {
        Alamofire.request("http://" + ipAddress + "/" + "output.cgi?text=.1212C1&submit=Submit")
    }
    
    @IBAction func SaveIPButton(_ sender: Any) {
        self.ipAddress = self.IPTextField.text!
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

