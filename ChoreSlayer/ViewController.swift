//
//  ViewController.swift
//  ChoreSlayer
//
//  Created by Aamina Munzir on 4/25/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redBarImageView: UIImageView!
    @IBOutlet weak var MonsterName: UILabel!
    @IBOutlet weak var HealthBar: UIImageView!
    @IBOutlet weak var HealthLabel: UILabel!
    @IBOutlet weak var AttackButton: UIButton!
    
    var monsterHealthTotal = 150
    var monsterName = "Mike W."
    var healthBarSize = 255
    var damageDone = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        MonsterName.text = monsterName
        HealthLabel.text = "\(monsterHealthTotal)/\(monsterHealthTotal)"
        
        redBarImageView.frame.size.width = CGFloat(healthBarSize)
        redBarImageView.frame.size.height = 48
        redBarImageView.frame.origin = CGPoint(x: 66.67, y: 585)
        redBarImageView.contentMode = UIView.ContentMode.scaleToFill
        
    }

    @IBAction func AttackPressed(_ sender: UIButton) {
        damageDone += 5
        HealthLabel.text = "\(monsterHealthTotal-damageDone)/\(monsterHealthTotal)"
        let barMultipier = CGFloat(damageDone)/CGFloat(monsterHealthTotal)
        let newWidth = CGFloat(CGFloat(healthBarSize) * (1.0-barMultipier))
        print(barMultipier)
        print(newWidth)
        redBarImageView.frame.size.width = newWidth
    }
    
}

