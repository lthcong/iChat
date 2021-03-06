//
//  SignUpVC.swift
//  iChat
//
//  Created by Cong La on 4/22/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var vMainView: UIView!
    @IBOutlet weak var btnSignUp: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
    }
    
    func setupUI() {
        self.vMainView.layer.cornerRadius = 20
        self.btnSignUp.layer.cornerRadius = 20
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func navigateBack(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        var dashboardVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "DashboardVCID") as! DashboardVC
        self.present(dashboardVC, animated:true, completion:nil)
    }
}
