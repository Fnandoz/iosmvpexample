//
//  RegistrationPresenter.swift
//  RegistrationPageMVP
//
//  Created by Fernando Gomes on 02/08/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import Foundation

protocol RegistrationDelegate {
    func showProgress()
    func hideProgress()
    func registrationDidSucceed()
    func registrationDidFailed(message: String)
}

class RegistrationPresenter {
    var delegate: RegistrationDelegate
    
    init(delegate: RegistrationDelegate) {
        self.delegate = delegate
    }
    
    func register(email: String, password: String,
                  fullName: String, phone: String) {
        
        if (email.isEmpty && (password.isEmpty || password.count < 8) && fullName.isEmpty && phone.isEmpty) {
            self.delegate.registrationDidFailed(message: "All fields must be filled")
            return
        }
        
        if email.isEmpty {
            self.delegate.registrationDidFailed(message: "Email can't be blank")
            return
        }
        
        if password.isEmpty {
            self.delegate.registrationDidFailed(message: "Password can't be blank")
            return
        } else if password.count < 8 {
            self.delegate.registrationDidFailed(message: "Password can't be less than 8 characters")
            return
        }
        
        if fullName.isEmpty {
            self.delegate.registrationDidFailed(message: "Full name can't be blank")
            return
        }
        
        if phone.isEmpty {
            self.delegate.registrationDidFailed(message: "Phone number can't be blank")
            return
        }
        
        // TODO: Store on CoreData
        self.delegate.registrationDidSucceed()
    }
    
}
