//
//  ViewController.swift
//  Task5
//
//  Created by 小川卓馬 on 2020/09/08.
//  Copyright © 2020 小川卓馬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var answerLabel: UILabel!
    @IBOutlet private weak var dividendTextField: UITextField!
    @IBOutlet private weak var divisorTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dividendTextField.keyboardType = .numberPad
        divisorTextField.keyboardType = .numberPad
    }
    
    @IBAction func calculationButtonTapped(_ sender: Any) {
        
        guard let dividend = Double(dividendTextField.text ?? "") else {
            displayAlert(title: "課題5", message: "割られる数を入力して下さい")
            return
        }
        
        guard let divisor = Double(divisorTextField.text ?? "") else {
            displayAlert(title: "課題5", message: "割る数を入力して下さい")
            return
        }
        
        guard divisor != 0 else {
            displayAlert(title: "課題5", message: "割る数には0を入力しないで下さい")
            return
        }
        
        answerLabel.text = String(dividend/divisor)
        
    }
    
    func displayAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }


}
