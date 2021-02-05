//
//  nextViewController.swift
//  utkarshNavigation
//
//  Created by IPHTECH 20 on 01/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import UIKit

class nextViewController: UIViewController {
      var name:String?
      override func viewDidLoad() {
          super.viewDidLoad()
          print("view did load")
          // Do any additional setup after loading the view.
      }
      
      override func loadView(){
       super.loadView()
          print("view load")
        userNameDetailsShowLabel.text = "Welcome " + String(name!)
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

    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var userNameDetailsShowLabel: UILabel!
    
    @IBAction func nextButton(_ sender: Any) {
    }
}
