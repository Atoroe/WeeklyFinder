//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Artiom Poluyanovich on 26.04.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDayTapped() {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(dayTextField.text!)
        dateComponents.month = Int(monthTextField.text!)
        dateComponents.year = Int(yearTextField.text!)
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "EEEE"
        
        let date = calendar.date(from: dateComponents)
        
        let weekDay = dateFormater.string(from: date!)
        
        resultLabel.text = weekDay
    }
}

