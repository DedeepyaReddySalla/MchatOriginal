//
//  Assesor.swift
//  MChatOriginal
//
//  Created by Dedeepya reddy Salla on 5/2/18.
//  Copyright © 2018 Dedeepya reddy Salla. All rights reserved.
//

import Foundation

class Assesor{
    var assesorImg:String
    var assesorDesc:String
    init?(assesorImg:String,assesorDesc:String)
    {
        if assesorImg.isEmpty || assesorDesc.isEmpty
        {
            return nil
        }
        self.assesorImg = assesorImg
        self.assesorDesc = assesorDesc
    }
    
}
