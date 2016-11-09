//
//  ViewController.swift
//  Till Death
//
//  Created by Jobin Joseph on 11/7/16.
//  Copyright © 2016 NaanBoys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Hello: UILabel!
    @IBOutlet weak var CountDown:UILabel!
    @IBOutlet var backthere: UIView!
    @IBOutlet weak var bar: UITabBar!
    @IBOutlet var first: UIView!
    @IBOutlet var deathscene: UIView!
    
    
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
        let endTime = formatter.date(from: "12/25/2016 12:00:00 a")
        let timedifference = userCalender.dateComponents([.year, .month, .day, .hour, .minute, .second], from: startTime, to: endTime!)
        
        CountDown.text = "\(timedifference.month!) Month \(timedifference.day!) Day \(timedifference.hour!) hour \(timedifference.minute!) minute \(timedifference.second!) second"
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

