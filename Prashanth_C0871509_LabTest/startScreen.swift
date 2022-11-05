//
//  ViewController.swift
//  Prashanth_C0871509_LabTest
//
//  Created by Others on 2022-11-04.
//

import UIKit

class startScreen: UIViewController {

    var counter = 00
    var minsCounter = 00
    var timer = Timer()
    var isPlaying = false
    var myCounter = 1

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var lapButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //timeLabel.text = String(counter)
        timeLabel.text = "00:00"
        //stopButton.isEnabled = false
        
    }
    
    
    @IBAction func startTimer(_ sender: Any) {
       // startButton.text  = "Stop"
      
        if(isPlaying) {
                return
            }
            startButton.setTitle("Stop", for: .normal)
            startButton.isEnabled = false
            //pauseButton.isEnabled = true
                
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
            isPlaying = true
        //timeLabel.text = "00:00"
        //let mainSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
       // let stopScreenVC = mainSB.instantiateViewController(withIdentifier: "stopScreen")
        /// make a modal segue    
//            self.present(homeVC, animated: true, completion: nil)
        //navigationController?.pushViewController(stopScreenVC, animated: true)
    }
    //    @IBAction func startTimer(_ sender: AnyObject) {
//        if(isPlaying) {
//                return
//            }
//            startButton.isEnabled = false
//            stopButton.isEnabled = true
//
//            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
//            isPlaying = true
//    }
//    @IBAction func pauseTimer(_ sender: AnyObject) {
//        startButton.isEnabled = true
//           stopButton.isEnabled = false
//
//           timer.invalidate()
//           isPlaying = false
//    }
//    @IBAction func resetTimer(_ sender: AnyObject) {
//        startButton.isEnabled = true
//           stopButton.isEnabled = false
//
//           timer.invalidate()
//           isPlaying = false
//        counter = 00
//
//        timeLabel.text = "\(minsCounter):\(counter)"
//    }
    
    @IBAction func LapTable(_ sender: Any) {
        
    }
    @objc func UpdateTimer() {
        counter = counter + 01
        if counter == 60
        {
            minsCounter = minsCounter + 01
            counter = 00
            timeLabel.text = "\(minsCounter):\(counter)"
        }
        timeLabel.text = "\(minsCounter):\(counter)"
    }


}

  




