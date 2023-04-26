//
//  ViewController.swift
//  ChoreSlayer
//
//  Created by Aamina Munzir on 4/25/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MonsterName: UILabel!
    @IBOutlet weak var HealthBar: UIImageView!
    @IBOutlet weak var HealthLabel: UILabel!
    @IBOutlet weak var AttackButton: UIButton!
    
    var monsterHealthTotal = 150
    var monsterName = "Mike W."
    var healthBarSize = 260
    var damageDone = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        MonsterName.text = monsterName
        HealthLabel.text = "\(monsterHealthTotal)/\(monsterHealthTotal)"
    }

    @IBAction func AttackPressed(_ sender: UIButton) {
        damageDone += 5
        HealthLabel.text = "\(monsterHealthTotal-damageDone)/\(monsterHealthTotal)"
        let barMultipier = CGFloat(damageDone)/CGFloat(monsterHealthTotal)
        let newWidth = CGFloat(CGFloat(healthBarSize) * (1.0-barMultipier))
        print(barMultipier)
        print(newWidth)
        /*HealthBar.frame = CGRectMake(
                     HealthBar.frame.origin.x,
                     HealthBar.frame.origin.y, newWidth, 50);
         not quite working*/
    }
    
}

