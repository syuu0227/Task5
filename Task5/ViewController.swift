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
        
        if dividendTextField.text == "" {
            displayAlert(title: "課題5", message: "割られる数を入力して下さい")
            return
        } else if divisorTextField.text == "" {
            displayAlert(title: "課題5", message: "割る数を入力して下さい")
            return
        } else if Double(divisorTextField.text!)! == 0 {
            displayAlert(title: "課題5", message: "割る数には0を入力しないで下さい")
            return
        }
        
        let answer = Double(dividendTextField.text!)! / Double(divisorTextField.text!)!
        answerLabel.text = String(answer)
        
    }
    
    func displayAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }


}
