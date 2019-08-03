//
//  MockUIViewController.swift
//  RegistrationPageMVPTests
//
//  Created by Fernando Gomes on 02/08/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import Foundation
import XCTest
@testable import RegistrationPageMVP

class MockUIViewController: RegistrationDelegate {
    var expec: XCTestExpectation
    init(expectation: XCTestExpectation) {
        self.expec = expectation
    }
    
    func showProgress() {
        
    }
    
    func hideProgress() {
        
    }
    
    func registrationDidSucceed() {
        
    }
    
    func registrationDidFailed(message: String) {
        //        XCTAssertEqual(message, "Email can't be blank")
        //        XCTAssertEqual(message, "Password can't be blank")
        //        XCTAssertEqual(message, "Password can't be less than 8 characters")
        //        XCTAssertEqual(message, "Full name can't be blank")
        //        XCTAssertEqual(message, "Phone number can't be blank")
        XCTAssertEqual(message, "All fields must be filled")
        
        self.expec.fulfill()
    }
}
