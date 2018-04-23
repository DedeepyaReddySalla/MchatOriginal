//
//  MoodsTableVC.swift
//  MChatOriginal
//
//  Created by Dedeepya reddy Salla on 4/22/18.
//  Copyright © 2018 Dedeepya reddy Salla. All rights reserved.
//

import UIKit

class MoodsTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var moodTableVm = MoodTableVM()
    var moodDataObjs = [MoodData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        moodDataObjs = moodTableVm.createMoodDataObj()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let count = moodTableVm.noOfEmotions()
        print(count)
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
