//
//  ViewController.swift
//  LibraryManagement
//
//  Created by Saumya Gautam on 08/01/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtFieldUserID: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonClicked(_ sender: Any){
        if (txtFieldUserID.text == ""){
            self.showAlert("Please enter user id ")
        }else if (txtFieldPassword.text == ""){
            self.showAlert("Please enter password ")
            
        }else{
            let viewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "HomeViewController")
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func showAlert(_ message : String){
        let alert = UIAlertController(title: message, message: "", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertAction)
        self.present(alert, animated: true)
    }
    
}
