//
//  ViewController22.swift
//  viewControllerFun
//
//  Created by GABRIELA AVILA on 9/28/23.
//

import UIKit

class ViewController22: UIViewController {

    var name : String!
    //not weak anymore?
    //used to be weak var delegate : ViewController!
    var delegate : ViewControllerDelegate!
    @IBOutlet weak var TFOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     print(name)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonAction(_ sender: UIButton) {
        
        view.backgroundColor = UIColor.yellow
        
        
    }
    
    @IBAction func secondButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toBlue", sender: self)
    }
    
    
   
    @IBAction func changeAction(_ sender: UIButton) {
        var name2 = TFOutlet.text!
        //used to be delegate.pony = name
        delegate.changeName(_s1: name)
        print(name)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
