//
//  SecondViewController.swift
//  AZLayout
//
//  Created by Sefa Aycicek on 15.02.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    var prm : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func method() -> String {
        return "Parametre değeri \(prm)"
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        if sender.tag == 1 {
            // modal açtığınız ekranlar
            // present ederek açtığını ekranlar
            self.dismiss(animated: true)
            
            /*self.dismiss(animated: true) {
                
            }*/
        }
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
