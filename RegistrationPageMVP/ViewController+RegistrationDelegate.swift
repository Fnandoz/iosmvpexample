//
//  ViewController+RegistrationDelegate.swift
//  RegistrationPageMVP
//
//  Created by Fernando Gomes on 02/08/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import Foundation

extension ViewController: RegistrationDelegate {
    func showProgress() {
        indicator.isHidden = false
    }
    
    func hideProgress() {
        indicator.isHidden = true
    }
    
    func registrationDidSucceed() {
        print("succeed")
        hideProgress()
    }
    
    func registrationDidFailed(message: String) {
        print(message)
        hideProgress()
    }
    
    
}
