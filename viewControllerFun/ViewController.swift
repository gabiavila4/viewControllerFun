//
//  ViewController.swift
//  viewControllerFun
//
//  Created by GABRIELA AVILA on 9/28/23.
//
protocol ViewControllerDelegate{
    //like interfaces
    //anyone that adopts protocol needs to write function code 
    func changeName(_s1: String)
}

import UIKit

class ViewController: UIViewController, ViewControllerDelegate {
    
    
    
    
    
    //adopted the protocol
    
    //var nvc :; ??
    
    @IBOutlet weak var TFOutlet: UITextField!
    
    var pony = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.magenta
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //view.backgroundColor = UIColor.systemBlue
        print(pony)
    }
    
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
        view.backgroundColor = UIColor.systemPink
        print("hi")
        pony = TFOutlet.text!
        performSegue(withIdentifier: "toRed", sender: self)
       // print(name)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //nvc = new view controller giving access to it
     let nvc = segue.destination as! ViewController22
        nvc.name = pony
        nvc.delegate = self
    }
    //setting refersnce for name
    
    
    //add nav controller, press yellow dot on first view controller then press editor at the top and embed in, navigation controller
//file new file for new view controller

    
    //have to now write whats in the protocol
    func changeName( _s1 s1: String) {
        pony = s1
    }
}

