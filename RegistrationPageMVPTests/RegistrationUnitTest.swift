//
//  RegistrationUnitTest.swift
//  RegistrationPageMVPTests
//
//  Created by Fernando Gomes on 02/08/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import XCTest
@testable import RegistrationPageMVP

class RegistrationUnitTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testRegisterWithEmptyEmail() {
        let expec = expectation(description: "registration with empty email")
        let registrationPresenter = RegistrationPresenter(delegate: MockUIViewController(expectation: expec))
        registrationPresenter.register(email: "", password: "123", fullName: "John Doe", phone: "+5511000000000")
        wait(for: [expec], timeout: 3)
    }
    
    func testRegisterWithEmptyPassword() {
        let expec = expectation(description: "registration with empty password")
        let registrationPresenter = RegistrationPresenter(delegate: MockUIViewController(expectation: expec))
        registrationPresenter.register(email: "john@doe.com", password: "", fullName: "John Doe", phone: "+5511000000000")
        wait(for: [expec], timeout: 3)
    }
    
    func testRegisterWithPasswordLessThan8Char() {
        let expec = expectation(description: "registration with password less than 8 characteres")
        let registrationPresenter = RegistrationPresenter(delegate: MockUIViewController(expectation: expec))
        registrationPresenter.register(email: "john@doe.com", password: "123abc", fullName: "John Doe", phone: "+5511000000000")
        wait(for: [expec], timeout: 3)
    }
    
    func testRegisterWithEmptyFullname() {
        let expec = expectation(description: "registration with empty full name")
        let registrationPresenter = RegistrationPresenter(delegate: MockUIViewController(expectation: expec))
        registrationPresenter.register(email: "john@doe.com", password: "12345678", fullName: "", phone: "+5511000000000")
        wait(for: [expec], timeout: 3)
    }
    
    func testRegisterWithEmptyPhoneNumber() {
        let expec = expectation(description: "registration with empty full name")
        let registrationPresenter = RegistrationPresenter(delegate: MockUIViewController(expectation: expec))
        registrationPresenter.register(email: "john@doe.com", password: "12345678", fullName: "John Doe", phone: "")
        wait(for: [expec], timeout: 3)
    }

    func testRegisterWithAllFailed() {
        let expec = expectation(description: "registration with all fields empty")
        let registrationPresenter = RegistrationPresenter(delegate: MockUIViewController(expectation: expec))
        registrationPresenter.register(email: "", password: "", fullName: "", phone: "")
        wait(for: [expec], timeout: 3)
    }
}
