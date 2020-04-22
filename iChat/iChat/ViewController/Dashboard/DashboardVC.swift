//
//  DashboardVC.swift
//  iChat
//
//  Created by Cong La on 4/22/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {

    @IBOutlet weak var vMainView: UIView!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
    }
    
    func setupUI() {
        self.vMainView.layer.cornerRadius = 20
        self.btnSignIn.layer.cornerRadius = 20
        
        self.btnSignUp.layer.cornerRadius = 20
        self.btnSignUp.layer.borderWidth = 1.0
        self.btnSignUp.layer.borderColor = Color.primaryColor.cgColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func signin(_ sender: Any) {
    }
    
    @IBAction func signup(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        var signUpVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "SignUpVCID") as! SignUpVC
        self.present(signUpVC, animated:true, completion:nil)
    }
}
