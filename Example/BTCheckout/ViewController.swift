//
//  ViewController.swift
//  BTCheckout
//
//  Created by jsmellz on 05/19/2018.
//  Copyright (c) 2018 jsmellz. All rights reserved.
//

import UIKit

// import pod
import BTCheckout

class ViewController: UIViewController {
    
    let tick = Ticket()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func bartabCheckout(_ sender: Any) {
        // call Deep link object with Ticket object type and Item object type and ticket object passed in
        print("HERE")
        BTDeepLinkTicket(tick)
    }
    

}

struct Ticket {
    var penis = "joshy"
    var het = 12323434
    var vagina = "2242425"
    var hat = 123
    var array = ["one":"two","three":"four"]
    var things = [Item.init(name:"one",thingy:"two",price:"three")]
    
}

struct Item {
    var name: String?
    var thingy: String?
    var price: String?
    init(name: String,thingy: String, price: String) {
        self.name = name
        self.thingy = thingy
        self.price = price
    }
}
