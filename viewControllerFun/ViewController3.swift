//
//  ViewController3.swift
//  viewControllerFun
//
//  Created by GABRIELA AVILA on 9/29/23.
//

import UIKit

class ViewController3: UIViewController {

    var text = ""
    
    //creating var to get access to the view controller 
    weak var delegate : ViewController!
    
    @IBOutlet weak var TFOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        var name2 = TFOutlet.text!
        delegate.pony = name2
        
        
    }
    
    
    

   

}
