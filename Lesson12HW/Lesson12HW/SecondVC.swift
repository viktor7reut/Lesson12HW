//
//  SecondVC.swift
//  Lesson12HW
//
//  Created by Виктор Реут on 12.03.24.
//

import UIKit

protocol SecondVCDelegate: AnyObject {
    func fullNameTextField(text: String)
}

class SecondVC: UIViewController {
    
    @IBOutlet private weak var surnameTextField: UITextField!
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var fatherNameTextField: UITextField!
    @IBOutlet private weak var saveButton: UIButton!
    
    weak var delegate: SecondVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveButton.styleButton()
    }
    
    @IBAction private func saveButtonDidTap() {

        delegate?.fullNameTextField(text: "\(surnameTextField.text ?? "") \(nameTextField.text ?? "") \(fatherNameTextField.text ?? "")")
        
        navigationController?.popViewController(animated: true)
    }
}
