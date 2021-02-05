//
//  ViewController.swift
//  utkarshNavigation
//
//  Created by IPHTECH 20 on 01/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        // Do any additional setup after loading the view.
    }
    
    override func loadView(){
     super.loadView()
        print("view load")
    }
    override func viewWillAppear(_ animated: Bool) {
     //super.viewWillAppear(<#T##animated: Bool##Bool#>)
        print("view will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
    // super.viewDidAppear(<#T##animated: Bool##Bool#>)
        print("view did appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
     //super.viewWillDisappear(<#T##animated: Bool##Bool#>)
        print("view will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
    let username = "rockmafia"
    let password = "12345"
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var invalidMessage: UILabel!
    
    @IBAction func nextButton(_ sender: Any) {
        let user = usernameTextField.text
        let pass = passwordTextField.text
        if username == user , password == pass {
            invalidMessage.text = ""
            self.performSegue(withIdentifier: "passDataIdentifier", sender: self)
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "nextViewController") as! nextViewController
                self.navigationController?.pushViewController(vc, animated: true)
        }
        else{
            print("user details are invalid!")
            invalidMessage.text = "user details are invalid!"
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passDataIdentifier" {
                let displayVC = segue.destination as! nextViewController
            displayVC.name = usernameTextField.text
        }
    }

}
