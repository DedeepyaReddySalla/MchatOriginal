//
//  MoodsTableVC.swift
//  MChatOriginal
//
//  Created by Dedeepya reddy Salla on 4/22/18.
//  Copyright © 2018 Dedeepya reddy Salla. All rights reserved.
//

import UIKit
//import os.log

class MoodsTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var moodTableVm = MoodTableVM()
    var moodDataObjs = [MoodData]()
    var assesorResult:Assesor?
    override func viewDidLoad() {
        super.viewDidLoad()
        moodDataObjs = moodTableVm.createMoodDataObj()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let count = moodTableVm.noOfEmotions()
//        print(count)
        return count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "Cell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier:cellIdentifier, for: indexPath) as? MoodTableViewCell else{
          fatalError("The dequeued cell is not an instance of MoodTableViewCell")
        }
       let moodData = moodDataObjs[indexPath.row]
       cell.desc.text = moodData.description
       cell.emotionImgView.image = UIImage(named:moodData.emotionImg)
       return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          let moodData = moodDataObjs[indexPath.row]
         if let assesorArry = moodTableVm.getAssesor(currentMood:moodData.moodAsses){
            if (assesorArry.count==1){
                assesorResult = assesorArry[0]
            }
        }
        performSegue(withIdentifier:"moodAssesor", sender:Any?.self)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? MoodAssesorVC
        if let vc = vc{
            vc.assesor = assesorResult
//            if let result = assesorResult
//            {
//                print("segue:\(result.assesorDesc)")
//            }
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
//        guard let button = sender as? UIBarButtonItem, button === saveButton else {
//            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
//            return
//        }
        
    }

    

}
