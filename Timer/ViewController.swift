//
//  ViewController.swift
//  Timer
//
//  Created by My Macbook on 21/11/18.
//  Copyright © 2018 TB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sss: UIButton!
    @IBOutlet weak var rst: UIButton!
    @IBOutlet weak var pse: UIButton!
    @IBOutlet weak var lbl: UILabel!
    var time = 0
    
    var timer = Timer()
    
    @IBAction func str(_ sender: UIButton) {
        
      timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func pas(_ sender: AnyObject) {
    timer.invalidate()
    }
    
    @IBAction func Res(_ sender: AnyObject) {
      timer.invalidate()
        time = 0
        lbl.text = ("0")
    }
    @objc func action()
    {
        time += 1
        lbl.text = String(time)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sss.layer.cornerRadius = 10.0
        sss.layer.masksToBounds = true
        rst.layer.cornerRadius = 10.0
        rst.layer.masksToBounds = true
        pse.layer.cornerRadius = 10.0
        pse.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

