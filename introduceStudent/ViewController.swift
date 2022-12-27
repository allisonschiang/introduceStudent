//
//  ViewController.swift
//  introduceStudent
//
//  Created by Allison Chiang on 12/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextbox: UITextField!
    
    @IBOutlet weak var lastNameTextbox: UITextField!
    
    @IBOutlet weak var schoolTextbox: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var petStepper: UIStepper!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
          numberOfPetsLabel.text = "\(Int(sender.value))"
      }
    
    @IBOutlet weak var colorChooser: UIColorWell!
    
    @IBOutlet weak var introduceButton: UIButton!
    @IBAction func introduceSelfDidTapped(_ sender: UIButton){
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        let color = colorChooser.selectedColor
        view.backgroundColor = color
        
        if (firstNameTextbox.text=="") || (lastNameTextbox.text=="") || (schoolTextbox.text=="") {
            let alertController = UIAlertController(title: "Oops!", message: "You are missing some information.", preferredStyle: .alert)
            let action = UIAlertAction(title:"Got it!", style: .default, handler: nil)
            alertController.addAction(action)
            present(alertController, animated:true, completion: nil)
        }
        else{
            let introduction = "My name is \(firstNameTextbox.text!) \(lastNameTextbox.text!) and I attend \(schoolTextbox.text!). I am currently in my \(year!) year and I have \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets!"
            
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            let action = UIAlertAction(title:"Nice to meet you!", style: .default, handler: nil)
            
            alertController.addAction(action)
            
            present(alertController, animated:true, completion: nil)
        }
    }
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

