//
//  FirstScene.swift
//  TillDeath
//
//  Created by Jobin Joseph on 11/8/16.
//  Copyright © 2016 NaanBoys. All rights reserved.
//
import Foundation
import UIKit
class FirstScene: UIViewController {

    @IBOutlet weak var inpt: UITextField!
    @IBOutlet weak var die: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController:Death = segue.destination as! Death
        DestViewController.LabelText = inpt.text!
    }
}
