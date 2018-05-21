//
//  ViewController.swift
//  BTCheckout
//
//  Created by jsmellz on 05/19/2018.
//  Copyright (c) 2018 jsmellz. All rights reserved.
//

import UIKit

// MARK: import pod
import BTCheckout

class ViewController: UIViewController {
    
    let ticket = Ticket()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: on button tap deep link to Bartab app with ticket object as query parameters
    
    @IBAction func bartabCheckout(_ sender: Any) {
        
        // MARK: pass ticket object to deep linking function
        
        BTDeepLinkTicket(ticket)
    }
    
}

// MARK: standin ticket object

struct Ticket {
    var identifier = "ticket1"
    var items = [Item.init(name:"beer",price:123), Item.init(name:"wine",price:123)]
    var tax = 123
    var subtotal = 123
}

// MARK: standin item object

struct Item {
    var name: String?
    var price: Int?
    init(name: String,price: Int) {
        self.name = name
        self.price = price
    }
}
