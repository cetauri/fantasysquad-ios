//
//  FirstViewController.swift
//  Fantasy Squad
//
//  Created by cetauri on 19/05/2017.
//  Copyright © 2017 playsnak. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(getTokenNotification),
                                               name: NSNotification.Name(rawValue: "GetTokenNotification"),
                                               object: nil)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getTokenNotification(_ notification: Notification) {
        textField.text = notification.userInfo?["key"] as? String
        
    }
}

