//
//  ViewController.swift
//  enums
//
//  Created by Mehmet Ragıp Altuncu on 08/01/16.
//  Copyright © 2016 MehmetAltuncu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    enum Cars: Int {
        case BMW = 0
        case HONDA = 1
        case SUBARU = 2
        case TESLA = 3
        
    }
    
    var carOfChoice: Cars!
    
    @IBOutlet weak var theLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var car1 = Cars.BMW
        var car2 = Cars.SUBARU
        
        if car1.rawValue == car2.rawValue {
            
        }
        
        if car1 == car2 {
            
        }
        
        carOfChoice = Cars.TESLA
        print(carOfChoice)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonTapped(sender: UIButton) {
        if sender.tag == Cars.BMW.rawValue {
            theLabel.text = "BMW is awsome"
        }else if sender.tag == Cars.HONDA.rawValue {
            theLabel.text = "Honda is UGLY"
        }else if sender.tag == Cars.TESLA.rawValue {
            theLabel.text = "The new coold kid"
        }else if sender.tag == Cars.SUBARU.rawValue {
            theLabel.text = "Subaru Sucks"
        }
    }

}

