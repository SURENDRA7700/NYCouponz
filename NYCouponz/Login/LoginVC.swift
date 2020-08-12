//
//  LoginVC.swift
//  NYCouponz
//
//  Created by surendra kumar k on 11/08/20.
//  Copyright © 2020 surendra kumar k. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    
    let scrollView: UIScrollView = {
           let v = UIScrollView()
           v.translatesAutoresizingMaskIntoConstraints = false
           return v
       }()
    
    
    let MobileFieldView: UIView = {
        let textField = UIView(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    
    let MobileField: mobileField = {
        let textField = mobileField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.returnKeyType = UIReturnKeyType.next
        textField.keyboardType = UIKeyboardType.phonePad
        textField.placeholder = "Please Enter Mobile Number"
        textField.textAlignment = .left
        return textField
    }()
    
    let PhoneLabel: UILabel  = {
        let label = UILabel()
        label.backgroundColor = UIColor.clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.primaryArabic(size: 14)
        label.textColor = UIColor.NYCouponz.Black
        label.numberOfLines = 0
        label.textAlignment = .natural
        label.text = "+91"
        return label
    }()


    let fieldsContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let mobileTile : UILabel = {
        let label = UILabel()
        label.text = "Mobile Number"
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        return label
    }()
    
    let loginButton : KetoButton = {
        let button = KetoButton(type: .custom)
        button.setTitle(NSLocalizedString("Submit", comment: ""), for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.textAlignment = .center
        button.layer.cornerRadius = 4.0
        button.clipsToBounds = true
        button.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let countryCodeLabel = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden  = true
        
        view.addSubview(scrollView)
        scrollView.keyboardDismissMode = .interactive
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        scrollView.addSubview(fieldsContainer)
        fieldsContainer.topAnchor.constraint(equalTo: scrollView.topAnchor, constant:10).isActive = true
        fieldsContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        fieldsContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        fieldsContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant:-10).isActive = true
        
        
        fieldsContainer.addSubview(mobileTile)
        mobileTile.topAnchor.constraint(equalTo: fieldsContainer.topAnchor, constant: 200).isActive = true
        mobileTile.leadingAnchor.constraint(equalTo: fieldsContainer.leadingAnchor, constant: 1).isActive = true
        mobileTile.trailingAnchor.constraint(equalTo: fieldsContainer.trailingAnchor, constant: -1).isActive = true
        mobileTile.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        
        fieldsContainer.addSubview(MobileField)
        MobileField.topAnchor.constraint(equalTo: mobileTile.topAnchor, constant: 50).isActive = true
        MobileField.leadingAnchor.constraint(equalTo: fieldsContainer.leadingAnchor, constant: 10).isActive = true
        MobileField.trailingAnchor.constraint(equalTo: fieldsContainer.trailingAnchor, constant: -10).isActive = true
        MobileField.heightAnchor.constraint(equalToConstant: 54).isActive = true
        MobileField.layer.masksToBounds = true
        MobileField.clipsToBounds = true
        MobileField.layer.cornerRadius = 0
        countryCodeLabel.sizeToFit()
        MobileField.leftView = countryCodeLabel
        MobileField.leftViewMode = .always
        countryCodeLabel.font = UIFont.primaryArabic(size: 14)
        countryCodeLabel.text = " +91 "
        MobileField.becomeFirstResponder()
        
        fieldsContainer.addSubview(loginButton)
        loginButton.topAnchor.constraint(equalTo: MobileField.bottomAnchor, constant: 15).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: fieldsContainer.leadingAnchor, constant: 1).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: fieldsContainer.trailingAnchor, constant: -1).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true;
        
    }
    

    

}
