//
//  ViewController.swift
//  AttributedString
//
//  Created by Darya on 14.12.23.
//

import UIKit

class ViewController: UIViewController {
   
    let stroke =  UITextView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stroke)
        stroke.translatesAutoresizingMaskIntoConstraints = false
        stroke.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        stroke.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        stroke.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stroke.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    
        
        let attributedString = NSMutableAttributedString(string: "Каждый охотник желает знать где сидит фазан")
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: NSRange(location: 0, length: 6))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.orange, range: NSRange(location: 7, length: 8))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: NSRange(location: 15, length: 6))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location: 22, length: 5))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.black, range: NSRange(location: 27, length: 3))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.magenta, range: NSRange(location: 32, length: 5))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.purple, range: NSRange(location: 38, length: 5))
        attributedString.addAttribute(.font, value: UIFont(name: "SmoochSans-VariableFont_wght", size: 12), range: NSRange(location: 0, length: 5))
        stroke.attributedText = attributedString
        
    }


}

