//
//  ViewController.swift
//  CafeCollectionKirk
//
//  Created by DEKLAN KIRK on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cartOutlet: UILabel!
    
    @IBOutlet weak var menuOutlet: UITextView!
    
    @IBOutlet weak var cartTextFieldOutlet: UITextField!
    
    var menu = ["Bagel":4.99, "Cheese":2.99, "Coffee":3.99, "Scone":4.99, "Apple":1.99]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.menuOutlet.text = "\(menu)"
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func addAction(_ sender: Any) {
        let cartItem = String (cartTextFieldOutlet.text!)
        if(menu.keys.contains(cartItem)){
            cartOutlet.text = "\(cartItem): $\(menu[cartItem]!)"
        }
    }
    
    
    
    

}

