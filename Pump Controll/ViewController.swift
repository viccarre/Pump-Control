//
//  ViewController.swift
//  Pump Controll
//
//  Created by Victor Carreño on 5/12/15.
//  Copyright (c) 2015 Victor Carreño. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var temp: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let baseURL = NSURL(string: "https://agent.electricimp.com/qDvrHlrYvYDp?ultrasonic")
        //Convert Data to String
        let data = NSData(contentsOfURL: baseURL!)
        let datastring = NSString(data: data!, encoding:NSUTF8StringEncoding)
        println(datastring!)
        temp.text = datastring! as String
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        
    }
    
    func update() {
        // Do any additional setup after loading the view, typically from a nib.
        let baseURL = NSURL(string: "https://agent.electricimp.com/qDvrHlrYvYDp?ultrasonic")
        //Convert Data to String
        let data = NSData(contentsOfURL: baseURL!)
        let datastring = NSString(data: data!, encoding:NSUTF8StringEncoding)
        println(datastring!)
        temp.text = datastring! as String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func auto(sender: UISwitch) {
        if(sender.on){
            
            let baseURL = NSURL(string: "https://agent.electricimp.com/qDvrHlrYvYDp?auto=1")
            let data = NSData(contentsOfURL: baseURL!)
            
        }else{
            
            let baseURL = NSURL(string: "https://agent.electricimp.com/qDvrHlrYvYDp?auto=0")
            let data = NSData(contentsOfURL: baseURL!)
            
        }
    }

    @IBAction func pump(sender: UISwitch) {
        
        if(sender.on){
            
            let baseURL = NSURL(string: "https://agent.electricimp.com/qDvrHlrYvYDp?pump=1")
            let data = NSData(contentsOfURL: baseURL!)
            
        }else{
            
            let baseURL = NSURL(string: "https://agent.electricimp.com/qDvrHlrYvYDp?pump=0")
            let data = NSData(contentsOfURL: baseURL!)
            
        }
        
        
    }
    
    @IBAction func extractor(sender: UISwitch) {
        
        if(sender.on){
            
            let baseURL = NSURL(string: "https://agent.electricimp.com/qDvrHlrYvYDp?extractor=1")
            let data = NSData(contentsOfURL: baseURL!)
            
        }else{
            
            let baseURL = NSURL(string: "https://agent.electricimp.com/qDvrHlrYvYDp?extractor=0")
            let data = NSData(contentsOfURL: baseURL!)
            
        }
        
    }
    
}

