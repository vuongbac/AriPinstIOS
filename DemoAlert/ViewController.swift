//
//  ViewController.swift
//  DemoAlert
//
//  Created by BAC Vuong Toan (VTI.Intern) on 11/12/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext

        self.present(vc, animated: true, completion: nil)
    }
    @IBAction func btn2(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

