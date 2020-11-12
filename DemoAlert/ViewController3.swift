//
//  ViewController3.swift
//  DemoAlert
//
//  Created by BAC Vuong Toan (VTI.Intern) on 11/12/20.
//

import UIKit

class ViewController3: UIViewController {
   

    @IBOutlet weak var btnCart: UIButton!
    @IBOutlet weak var cl: UICollectionView!
    var list = ["coca", "pessi" , "7up", "O long " ," 0 do " , "C2" , "NumberOne", "Q" , "A" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customButton()
    }
    
    func customButton()  {
    cl.register(UINib(nibName: "CLCell", bundle: nil), forCellWithReuseIdentifier: "CLCell")
        btnCart.layer.borderWidth = 1
        btnCart.layer.cornerRadius = 25
        btnCart.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    

    @IBAction func tbnCart(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext

        self.present(vc, animated: true, completion: nil)
    }
}

extension ViewController3: UICollectionViewDelegate,  UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cl.dequeueReusableCell(withReuseIdentifier: "CLCell", for: indexPath) as! CLCell
        var a = list[indexPath.row]
        cell.setUp(image: a, name: a)
        return cell
    }
    
    
}
