//
//  ViewController.swift
//  TillDeath
//
//  Created by Jobin Joseph on 11/8/16.
//  Copyright © 2016 NaanBoys. All rights reserved.
//

import UIKit

class Death: UIViewController {

    @IBOutlet var TillDeath: UIView!
    @IBOutlet weak var CountDown: UILabel!
    
    var LabelText = String()
    
    let formatter  = DateFormatter()
    let userCalender = Calendar.current
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let timer = Timer.scheduledTimer(timeInterval:1.0, target: self, selector: #selector(death), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    func death() {
        
        formatter.dateFormat = "MM/dd/yy hh:mm:ss a"
        let startTime = Date()
        let endTime = formatter.date(from: LabelText)
        let timedifference = userCalender.dateComponents([.day, .hour, .minute, .second], from: startTime, to: endTime!)
        
        CountDown.text = " Days: \(timedifference.day!)  \r\n Hours: \(timedifference.hour!) \r\n Minutes: \(timedifference.minute!) \r\n Seconds: \(timedifference.second!)"
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
