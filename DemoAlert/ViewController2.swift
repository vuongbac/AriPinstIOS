//
//  ViewController2.swift
//  DemoAlert
//
//  Created by BAC Vuong Toan (VTI.Intern) on 11/12/20.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var BillView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func btn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func btnPrint(_ sender: Any) {
        let printController = UIPrintInteractionController.shared
        let printInfo = UIPrintInfo(dictionary:nil)
        printInfo.outputType = UIPrintInfo.OutputType.general
        printInfo.jobName = "aa"
        printController.printInfo = printInfo
        
        printController.printingItem = BillView.toImage()
        printController.present(animated: true, completionHandler: nil)
    }
}

extension UIView {
    func toImage() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)

        drawHierarchy(in: self.bounds, afterScreenUpdates: true)

        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
