//
//  ViewController.swift
//  hamit-assignment1-level6
//
//  Created by Hamit Sehjal on 2024-02-14.
//

import UIKit

class ViewController: UIViewController {
    var name:String = "HAMIT"
    var program:String = "CPA"
    var level:String="6"
    var background:String="BEGINNER"
    var gpa:Float=3.6
    @IBOutlet var headshotImageView: UIImageView!
    
    // Reference to Name String
    @IBOutlet var nameString: UITextField!
    
    // Reference to Description String
    @IBOutlet var descriptionString: UILabel!
    
    // Reference to Program Code
    @IBOutlet var programCode: UISegmentedControl!
    
    // Reference to Program Level
    @IBOutlet var programLevel: UISegmentedControl!
    
    @IBOutlet var iOSBackground: UISegmentedControl!
    
    @IBOutlet var gpaScale: UISlider!
    
    // Action being triggerd for `Entering Name`
    @IBAction func userNameChanged(_ textField: UITextField) {

        if let user=textField.text,!name.isEmpty{
            name=user.uppercased()
        }else{
            name="HAMIT"
        }
        
        updateDescription()
    }
    
    // Action being triggered for `Changing Program`
    @IBAction func programChanged(_ segControl: UISegmentedControl) {
        
        switch segControl.selectedSegmentIndex{
        case 0:
            program="CPA"
        case 1:
            program="BSD"
        default:
            break
        }
        updateDescription()
        
    }
    
    // Action being triggered for `Changing Level`
    
    @IBAction func levelChanged(_ segControl: UISegmentedControl) {
        
        switch segControl.selectedSegmentIndex{
        case 0:
            level="1"
        case 1:
            level="2"
        case 2:
            level="3"
        case 3:
            level="4"
        case 4:
            level="5"
        case 5:
            level="6"
        default:
            break
        }
        updateDescription()
       
    }
    
    // Action being triggerd for `Chaning GPA`
    @IBAction func gpaChanged(_ slider: UISlider) {
        
        gpa=slider.value
        updateDescription()

    }
    // Action being triggered for `Changing Background`
    @IBAction func backgroundChanged(_ segControl: UISegmentedControl) {
        
        switch segControl.selectedSegmentIndex{
        case 0:
            background="BEGINNER"
        case 1:
            background="INTERMEDIATE"
        case 2:
            background="EXPERT"
        default:
            break
        }
        
        updateDescription()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the image from the bundle
        if let headShot = UIImage(named: "programmer"){
            headshotImageView.image=headShot
            
        }else{
            print("An Error Occured")
        }
        
        nameString.text="Hamit"
        programCode.selectedSegmentIndex=0
        programLevel.selectedSegmentIndex=5
        iOSBackground.selectedSegmentIndex=0
        gpaScale.minimumValue=0.0
        gpaScale.maximumValue=4.0
        gpaScale.value=3.6

        
        updateDescription()
    }

    // Update the Description String
    func updateDescription(){
        
        descriptionString.text="My name is \(name) I am in \(program) \nLevel \(level) with current GPA of \(String(format:"%.2f",gpa))\nI am \(background) in iOS Development"
    }

}

