//
//  RegisterViewController.swift
//  Chatee
//
//  Created by jp on 2019-03-07.
//  Copyright © 2019 Jordan Perrella. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
  
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBAction func registerButtonTapped(_ sender: UIButton) {
    
    if let email = emailTextField.text, let password = passwordTextField.text {
      Auth.auth().createUser(withEmail: email, password: password){(user, error) in
        if let err = error {
          print(err)}else{
          self.performSegue(withIdentifier: "showChat", sender: self)
          print("user created!" + email)
          }
        }
      }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
