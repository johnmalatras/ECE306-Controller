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
        requestCar(command: "F", time: 1)
    }

    @IBAction func RightButton(_ sender: Any) {
        requestCar(command: "L", time: 1)
    }
    
    @IBAction func LeftButton(_ sender: Any) {
        requestCar(command: "R", time: 1)
    }
    
    @IBAction func ReverseButton(_ sender: Any) {
        requestCar(command: "B", time: 1)
    }
    
    @IBAction func StopButton(_ sender: Any) {
        requestCar(command: "S", time: 1)
    }
    
    @IBAction func CircleEndButton(_ sender: Any) {
        requestCar(command: "C", time: 1)
    }
    
    @IBAction func ApproachCircleButton(_ sender: Any) {
        requestCar(command: "A", time: 1)

    }
    
    @IBAction func CircleFailButton(_ sender: Any) {
        requestCar(command: "Z", time: 1)
    }

    @IBAction func SaveIPButton(_ sender: Any) {
        self.ipAddress = self.IPTextField.text!
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func requestCar(command: Character, time: Int) {
        Alamofire.request("http://" + ipAddress + "/" + "output.cgi?text=.1212\(command)\(time)&submit=Submit")
    }
}

