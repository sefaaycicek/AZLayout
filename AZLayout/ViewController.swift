//
//  ViewController.swift
//  AZLayout
//
//  Created by Sefa Aycicek on 15.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let items = self.view.subviews
        items.forEach { item in
          /*  if !(item is UIButton) {
                item.layer.cornerRadius = 16
            }*/
            
            if item.tag == 1 {
                item.layer.cornerRadius = 16
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        txt.text = "Sefa"
    }
    
    @IBAction func openSeconScreenTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            viewController.prm = "Kod ile açtım seni"
            self.present(viewController, animated: true)
        }
    }
    
    @IBAction func openNext(_ sender: Any) {
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       /* if segue.destination is SecondViewController {
            let vc = segue.destination as! SecondViewController
            vc
        }*/
        
        
        
        if let destination = segue.destination as? SecondViewController {
            destination.prm = "Az Eğitim"
        }
    }
}

