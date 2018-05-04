//
//  MoodTableVM.swift
//  MChatOriginal
//
//  Created by Dedeepya reddy Salla on 4/22/18.
//  Copyright © 2018 Dedeepya reddy Salla. All rights reserved.
//

//desc ****
//        I feel ……angry, annoyed, cranky, grouchy, incited, aggravated, or ticked off,
//          I feel … confused, addled, puzzled, or scatterbrain:,
//        I feel cool, chill, copacetic, relaxed, borderline, or contemplative,
//        I feel astonished, shocked, surprised, or WOW,
//        I feel …excited, energetic, bouncy, lively, or rockin,
//        I feel …happy, content, glad, chipper, or splendid,
//        I feel … sad, depressed, unhappy, miserable, or disappointed,
//        I feel …focused, determined, concentrated, motivated, inspired, or goal-oriented,
//        I feel… nervous, anxious, uncertain, fidgety, or rushed

//let emotionsArry = ["energetic.png","inspired.jpeg","cool.jpg","sick.png","confused.jpg","shocked.jpg","Infuriated.jpg","anxious.jpg","sad.jpeg"]

//let descArry = ["\"I feel ……angry, annoyed, cranky, grouchy, incited, aggravated, or ticked off\"",

//What classes are used here -- MoodData.Swift
import UIKit


class MoodTableVM{
    let moods = ["Normal","Neutral","Abnormal"]
    let moodsSmileysDict = ["Normal":[["energetic.png","\"I feel …excited, energetic, bouncy, lively, or rockin\""],["inspired.jpeg", "\"I feel …focused, determined, concentrated, motivated, inspired, or goal-oriented\""],["cool.jpg","\"I feel cool, chill, copacetic, relaxed, borderline, or contemplative\""]],//Normal
                    "Neutral":[["sick.png","\"I feel… nervous, anxious, uncertain, fidgety, or rushed\""],["confused.jpg","\"I feel … confused, addled, puzzled, or scatterbrain\""],["shocked.jpg","\"I feel astonished, shocked, surprised, or WOW\""]],//Neutral
                    "Abnormal":[["Infuriated.jpg","I feel infuriated"],["anxious.jpg","\"I feel ……angry, annoyed, cranky, grouchy, incited, aggravated, or ticked off\""],["sad.jpeg","\"I feel … sad, depressed, unhappy, miserable, or disappointed\""]]//Abnormal
                            ]// end of moodsSmileysDict
    let AssesorDict = ["Normal":["MoodAsses-1.jpeg","normal baseline"],
                       "Neutral":["MoodAsses-1.jpeg","neutral baseline"],
                       "Abnormal":["MoodAsses-1.jpeg","abnormal baseline"]]
   
    func createMoodDataObj() -> [MoodData]
    {
        var moodDataObjs = [MoodData]()
        for mood in moods{ //getting keys for each mood
            if let emotions = moodsSmileysDict[mood]
            {
                for emotion in emotions //initializing object for each emotion
                {
                    let img = emotion[0]
                    let desc = emotion[1]
                    if let moodData:MoodData = MoodData(emotionImg:img, description:desc, moodAsses:mood)
                    {
                        moodDataObjs.append(moodData)
                    }
                }
            }
        }
         return moodDataObjs //returns all mood data objects, each object in each cell
    }// end of createMoodDataObj
    
    func noOfEmotions()->Int
    {
        var count = 0
        for mood in moods{
            if let emotions = moodsSmileysDict[mood]
            {
                count += emotions.count
            }
        }
//        print(count)
        return count
    }//end of count

    func getAssesor(currentMood:String)-> [Assesor]?{
        var assesor = [Assesor]()
        for mood in moods{
            if currentMood == mood
            {
                if let data = AssesorDict[mood]{
                    let img = data[0]
                    let desc = data[1]
                    if let assesorObj:Assesor = Assesor(assesorImg:img, assesorDesc:desc)
                    {
                     assesor.append(assesorObj)
                    }
                 }
                break
             }
        }
       return assesor
    } //getting matched assesor object

}//end of MoodTableVM
