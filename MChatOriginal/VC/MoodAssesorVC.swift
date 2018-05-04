//
//  MoodAssesorVC.swift
//  MChatOriginal
//
//  Created by Dedeepya reddy Salla on 5/2/18.
//  Copyright © 2018 Dedeepya reddy Salla. All rights reserved.
//

import UIKit

class MoodAssesorVC: UIViewController {
    var assesor:Assesor?
    @IBOutlet weak var assesorImg: UIImageView!
    @IBOutlet weak var desc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let assesor = assesor
        {
            assesorImg.image = UIImage(named:assesor.assesorImg)
            desc.text = assesor.assesorDesc
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
