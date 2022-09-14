//
//  ViewController.swift
//  CafeCollectionKirk
//
//  Created by DEKLAN KIRK on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cartOutlet: UILabel!
    
    @IBOutlet weak var menuOutlet: UILabel!
    
    var item = ["Iced Coffee", "Pastry", "Muffin", "Hot Coffee", "Scone"]
    var value = [5.25, 2.00, 4.25, 3.00, 5.50]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuOutlet.text = "              Menu \n\n\(item[0]),  $\(value[0])\n\(item[1]),  $\(value[1])\n\(item[2]),  $\(value[2])\n\(item[3]),   $\(value[3])\n\(item[4]),  $\(value[4])"
        
        
        // Do any additional setup after loading the view.
    }

    
    
    

}

