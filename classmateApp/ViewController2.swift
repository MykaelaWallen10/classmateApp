//
//  ViewController2.swift
//  classmateApp
//
//  Created by MYKAELA WALLEN on 10/11/23.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    
    @IBOutlet weak var favPersonOutlet: UITextField!
    
    @IBOutlet weak var awesOutlet: UITextField!
    
    var classmates : [classmateStruct] = []
    
    var c = 0
    var i = 3
    
    var name  = ""
    var favPerson = ""
    var aws = 0
    
    var nat = classmateStruct(name: "Natalie", awesomeness: 11, favPerson: "Herself")
    
    var claire = classmateStruct(name: "Claire", awesomeness: 120, favPerson: "Olivia")
    
    var olivia = classmateStruct(name: "olivia", awesomeness: 11, favPerson: "Michelle Obama")
    
    
    
    
    
    @IBOutlet weak var displayStudents: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        classmates.append(olivia)
        classmates.append(claire)
        classmates.append(nat)
        
        
        // Do any additional setup after loading the view.
        
     displayStudents.text = "Name: \(nat.name) \n  Rating: \(nat.awesomeness)/10 \n Favorite person: \(nat.favPerson)"
            
            
        
        
        
        
    }
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        displayStudents.text = "Name: \(classmates[c].name) \n  Rating: \(classmates[c].awesomeness)/10 \n Favorite person: \(classmates[c].favPerson)"
        
        c += 1
        if(c>=classmates.count){
            c = 0
        }
        
        
      
    }
    
    
    @IBAction func sortMethod(_ sender: UIButton) {
        
        
        classmates = classmates.sorted(by: { $0.name < $1.name
            
        })
    }
    
    
    
    @IBAction func addClassmate(_ sender: UIButton) {
        
        name = nameOutlet.text!
        
        favPerson = favPersonOutlet.text!
        
        aws = Int(awesOutlet.text!)!
        
        classmates.append(classmateStruct(name: name, awesomeness: aws, favPerson: favPerson))
       
        
        
    }
    
    

}
