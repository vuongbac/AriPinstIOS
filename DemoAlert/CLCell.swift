//
//  CLCell.swift
//  DemoAlert
//
//  Created by BAC Vuong Toan (VTI.Intern) on 11/12/20.
//

import UIKit

class CLCell: UICollectionViewCell {

    @IBOutlet weak var viewLbl: UIView!
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var icons: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        customView()
    }
    func customView() {
        viewCell.layer.borderWidth = 1
        viewCell.layer.borderColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        viewCell.layer.cornerRadius = 10
        viewLbl.layer.cornerRadius = 10 
    }
    
    func setUp(image: String, name:String){
        lblName.text = name
    }

}
