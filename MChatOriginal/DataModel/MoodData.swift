//
//  MoodData.swift
//  MChatOriginal
//
//  Created by Dedeepya reddy Salla on 4/22/18.
//  Copyright © 2018 Dedeepya reddy Salla. All rights reserved.
//

import Foundation

class MoodData{
    var emotionImg:String
    var description:String
    var moodAsses:String
    init?(emotionImg:String,description:String,moodAsses:String)
    {
        if emotionImg.isEmpty || description.isEmpty || moodAsses.isEmpty
        {
            return nil
        }
        self.emotionImg = emotionImg
        self.description = description
        self.moodAsses = moodAsses
    }
}
