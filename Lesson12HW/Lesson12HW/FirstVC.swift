//
//  FirstVC.swift
//  Lesson12HW
//
//  Created by Виктор Реут on 12.03.24.
//

import UIKit

class FirstVC: UIViewController, SecondVCDelegate {
    
    @IBOutlet private weak var fullNameLabel: UILabel!
    @IBOutlet private weak var nextVCButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextVCButton.styleButton()
        
    }
    
    
    @IBAction private func nextVCButtonDidtap() {
        //        navigationController?.pushNextVC(nameVC: "\(SecondVC.self)")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let nextVC = storyboard.instantiateViewController(withIdentifier: "\(SecondVC.self)") as? SecondVC {
            nextVC.delegate = self
            navigationController!.pushViewController(nextVC, animated: true)
        }
    }
    
    func fullNameTextField(text: String) {
        fullNameLabel.text = text
    }
}
