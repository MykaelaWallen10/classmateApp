//
//  ViewController.swift
//  classmateApp
//
//  Created by MYKAELA WALLEN on 10/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func goToStudent(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toStudent", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController2
    }
    
    
    
    

}


