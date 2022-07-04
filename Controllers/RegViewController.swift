//
//  RegViewController.swift
//  ProjectMS
//
//  Created by Влада Предыбайло on 30.06.2022.
//

import UIKit

class RegViewController: UIViewController {

    var delegate: LoginViewControllerDelegate!
    @IBOutlet weak var mainView: UIView!
    
    var tapGest: UITapGestureRecognizer?
    var checkField = CheckField.shared
    var service = Service.shared
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var repasswordView: UIView!
    @IBOutlet weak var rePasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapGest = UITapGestureRecognizer(target: self, action: #selector(endEditing))
        mainView.addGestureRecognizer(tapGest!)
    }
    @IBAction func closeVC(_ sender: Any) {
        delegate.closeVC()
    }
    
    @objc func endEditing() {
        self.view.endEditing(true)
    }
    
    @IBAction func regBtnClick(_ sender: Any) {
        if checkField.validField(emailView, emailField),
           checkField.validField(passwordView, passwordField)
        {
            if passwordField.text == rePasswordField.text{
                service.createNewUser(LoginField(email: emailField.text!, password: passwordField.text!)) { [weak self] code in
                    switch code.code{
                    case 0:
                        print("Произошла проблема регистрации")
                    case 1:
                        print("Успешно зарегестрировались")
                        self?.service.confirmEmail()
                    default:
                        print("Неизвестная ошибка")
                    }
                }
            } else {
                print("пароли не совпадают")
            }
        }
    }
}
