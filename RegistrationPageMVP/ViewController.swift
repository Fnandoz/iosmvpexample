//
//  ViewController.swift
//  RegistrationPageMVP
//
//  Created by Fernando Gomes on 02/08/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var fullNameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    var presenter: RegistrationPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.presenter = RegistrationPresenter(delegate: self)
        hideProgress()
    }

    @IBAction func register() {
        showProgress()
        self.presenter?.register(email: emailField.text!, password: passwordField.text!, fullName: fullNameField.text!, phone: phoneNumberField.text!)
    }
    
}

