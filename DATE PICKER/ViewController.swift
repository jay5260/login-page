//
//  ViewController.swift
//  DATE PICKER
//
//  Created by Rohit kevat on 12/12/1955 Saka.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var dateAndTimeTextFieldView: UITextField!
    @IBOutlet weak var datePickerView: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupDatePicker()
    }
    
    private func setupDatePicker()
    {
        datePickerView.datePickerMode = .date
        datePickerView.preferredDatePickerStyle = .compact
        view.addSubview(datePickerView)
        
    }
    
    private func convertDateToString(with formate: String , date: Date) -> String
    {
        let formatter : DateFormatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy "
        return formatter.string(from: date)
    }
    

    @IBAction func dateUpdated(_ sender: Any) {
        dateAndTimeTextFieldView.text = convertDateToString(with: "dd/mm/yyyy",date: (sender as AnyObject).date )
    }
    @IBAction func timeAndDateValueChanged(_ sender: UITextField) {
         
    }
    

}

