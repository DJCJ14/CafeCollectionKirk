//
//  ViewController.swift
//  CafeCollectionKirk
//
//  Created by DEKLAN KIRK on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cartOutlet: UITextView!
    
    @IBOutlet weak var menuOutlet: UITextView!
    
    @IBOutlet weak var cartTextFieldOutlet: UITextField!
    
    @IBOutlet weak var addMenuItemOutlet: UITextField!
    
    @IBOutlet weak var adminPasswordOutlet: UITextField!
    
    @IBOutlet weak var addRemoveButtonOutlet: UIButton!
    
    @IBOutlet weak var totalOutlet: UILabel!
    
    
    var menu = ["Bagel":4.99, "Cheese":2.99, "Coffee":3.99, "Scone":4.99, "Apple":1.99]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addMenuItemOutlet.isHidden = true
        addRemoveButtonOutlet.isHidden = true
        
        self.menuOutlet.text = "\(menu)"
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func addAction(_ sender: Any) {
        var total = Double (0)
        let cartItem = String (cartTextFieldOutlet.text!)
        if(menu.keys.contains(cartItem)){
            cartOutlet.text =  "\(cartOutlet.text!)\n \(cartItem): $\(menu[cartItem]!)"
            total = total + (menu[cartItem]!)
            totalOutlet.text = "\(total)"
            
        }
    }
    
    
    
    @IBAction func enterPasswordAction(_ sender: UIButton) {
        let password = String (adminPasswordOutlet.text!)
        if(password == "12345"){
        addMenuItemOutlet.isHidden = false
            addRemoveButtonOutlet.isHidden = false
    }
    }
    
    @IBAction func addRemoveButton(_ sender: Any) {
        
    }
    
        
    
    
    
    

}

