//
//  Service.swift
//  ProjectMS
//
//  Created by Влада Предыбайло on 04.07.2022.
//

import UIKit
import Firebase

class Service {
    static let shared = Service()
    
    init(){

    }
    
    func createNewUser(_ data: LoginField, completiton: @escaping (ResponceCode) -> ()){
        Auth.auth().createUser(withEmail: data.email, password: data.password) { [weak self] result, err in
            if err == nil{
                if result != nil{
                completiton(ResponceCode(code: 1))
                }
            } else {
                completiton(ResponceCode(code: 0))
            }
            
            
        }
    }
    
    func confirmEmail(){
        Auth.auth().currentUser?.sendEmailVerification(completion: { err in
            if err != nil {
                print(err!.localizedDescription)
            }
        })

    }
}
