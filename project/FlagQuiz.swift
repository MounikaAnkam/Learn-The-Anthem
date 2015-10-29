//
//  Quiz.swift
//  project
//
//  Created by Ankam,Mounika on 3/27/15.
//  Copyright (c) 2015 Mounika. All rights reserved.
//

import UIKit

class FlagQuiz: UIViewController {
    
    var correctAnswer:String!
    var countTimer = 30
    var timeRun = false
    var timer = NSTimer()
    var answer:String!
        
    var cname:[String] = ["India","United States","Kenya","Brazil","France","Australia","Canada","Germany","Mexico","New Zealand","Pakistan","South Africa","Sri 0Lanka","Zimbabwe","Japan"]

    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    @IBOutlet weak var score: UILabel!
    
    
    @IBOutlet weak var Questionimage: UIImageView!
    
    
    @IBOutlet weak var Button1: UIButton!
    
    
    @IBOutlet weak var Button2: UIButton!
    
    
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var showAnswer: UILabel!
    
    @IBAction func Next(sender: AnyObject) {
        countTimer = 31
        startTimer()
        Hide()
        randomQuestions()
        Button1.enabled = true
        Button2.enabled = true
        Button3.enabled = true
        Hide1()
    }
    
    func Hide() {
            answerLabel.hidden = true
    }
   
    func UnHide() {
        answerLabel.hidden = false
    }
    func Hide1() {
       
        showAnswer.hidden = true
    }
    
    func UnHide1() {
        
        showAnswer.hidden = false
    }
    
    func counting(){
        
        
            countTimer = countTimer - 1
            timerLabel.text = String(countTimer)
        
        if countTimer == 0 {
            Hide()
            UnHide1()
            timer.invalidate()
            Button1.enabled = false
             Button2.enabled = false
             Button3.enabled = false
            showAnswer.text = "Answer is \(answer)"
            
        }
    }
    
    func startTimer() {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self , selector: Selector("counting"), userInfo: nil , repeats: true )
        
    }
    
    func stopTimer(){
        
            timer.invalidate()
    }
    
    func randomQuestions(){
        
        var rno = (random() % 16) + 1
        switch(rno) {
            
        case 1:
           
           Questionimage.image = UIImage(named: cname[0])
           Button1.setTitle("India", forState: UIControlState.Normal)
           Button2.setTitle("Sri Lanka", forState: UIControlState.Normal)
           Button3.setTitle("Mexico", forState: UIControlState.Normal)
           correctAnswer = "1"
           answer = "India"
            break
            
        case 2:
           
            Questionimage.image = UIImage(named: cname[1])
            Button1.setTitle("Zimbabwe", forState: UIControlState.Normal)
            Button2.setTitle("Japan", forState: UIControlState.Normal)
            Button3.setTitle("United States", forState: UIControlState.Normal)
            correctAnswer = "3"
            answer = "United States"
            break
            
        case 3:
            
            Questionimage.image = UIImage(named: cname[2])
            Button1.setTitle("Canada", forState: UIControlState.Normal)
            Button2.setTitle("Kenya", forState: UIControlState.Normal)
            Button3.setTitle("France", forState: UIControlState.Normal)
            correctAnswer = "2"
            answer = "Kenya"
            break
            
        case 4:
           
            Questionimage.image = UIImage(named: cname[3])
            Button1.setTitle("Zimbabwe", forState: UIControlState.Normal)
            Button2.setTitle("Brazil", forState: UIControlState.Normal)
            Button3.setTitle("South Africa", forState: UIControlState.Normal)
            correctAnswer = "2"
            answer = "Brazil"
            break
            
        case 5:
           
            Questionimage.image = UIImage(named: cname[4])
            Button1.setTitle("France", forState: UIControlState.Normal)
            Button2.setTitle("Pakistan", forState: UIControlState.Normal)
            Button3.setTitle("United States", forState: UIControlState.Normal)
            correctAnswer = "1"
            answer = "France"
            break
            
            
        case 6:
          
            Questionimage.image = UIImage(named: cname[5])
            Button1.setTitle("Mexico", forState: UIControlState.Normal)
            Button2.setTitle("Pakistan", forState: UIControlState.Normal)
            Button3.setTitle("Australia", forState: UIControlState.Normal)
            correctAnswer = "3"
            answer = "Australia"
            break
            
        case 7:
            
            Questionimage.image = UIImage(named: cname[6])
            Button1.setTitle("Canada", forState: UIControlState.Normal)
            Button2.setTitle("Sri Lanka", forState: UIControlState.Normal)
            Button3.setTitle("Mexico", forState: UIControlState.Normal)
            correctAnswer = "1"
             answer = "Canada"
            break
            
        case 8:
            
            Questionimage.image = UIImage(named: cname[7])
            Button1.setTitle("Germany", forState: UIControlState.Normal)
            Button2.setTitle("Japan", forState: UIControlState.Normal)
            Button3.setTitle("United States", forState: UIControlState.Normal)
            correctAnswer = "1"
             answer = "Germany"
            
            break
            
        case 9:
            
            Questionimage.image = UIImage(named: cname[8])
            Button1.setTitle("Canada", forState: UIControlState.Normal)
            Button2.setTitle("Mexico", forState: UIControlState.Normal)
            Button3.setTitle("Japan", forState: UIControlState.Normal)
            correctAnswer = "2"
            answer = "Mexico"
            break
            
        case 10:
            
            Questionimage.image = UIImage(named: cname[9])
            Button1.setTitle("Zimbabwe", forState: UIControlState.Normal)
            Button2.setTitle("Brazil", forState: UIControlState.Normal)
            Button3.setTitle("Newzealand", forState: UIControlState.Normal)
            correctAnswer = "3"
          answer = "Newzealand"
            break
            
        case 11:
            
            Questionimage.image = UIImage(named: cname[10])
            Button1.setTitle("Zimbabwe", forState: UIControlState.Normal)
            Button2.setTitle("Pakistan", forState: UIControlState.Normal)
            Button3.setTitle("United States", forState: UIControlState.Normal)
            correctAnswer = "2"
             answer = "Pakistan"
            break
            
        case 12:
            
            Questionimage.image = UIImage(named: cname[11])
            Button1.setTitle("South Africa", forState: UIControlState.Normal)
            Button2.setTitle("Japan", forState: UIControlState.Normal)
            Button3.setTitle("Australia", forState: UIControlState.Normal)
            correctAnswer = "1"
             answer = "South Africa"
            break
        case 13:
            
            Questionimage.image = UIImage(named: cname[12])
            Button1.setTitle("Zimbabwe", forState: UIControlState.Normal)
            Button2.setTitle("Brazil", forState: UIControlState.Normal)
            Button3.setTitle("Sri Lanka", forState: UIControlState.Normal)
            correctAnswer = "3"
             answer = "Sri Lanka"
            break
            
        case 14:
            
            Questionimage.image = UIImage(named: cname[13])
            Button1.setTitle("Zimbabwe", forState: UIControlState.Normal)
            Button2.setTitle("Pakistan", forState: UIControlState.Normal)
            Button3.setTitle("Brazil", forState: UIControlState.Normal)
            correctAnswer = "1"
             answer = "Zimbabwe"
            break
            
        case 15:
            
            Questionimage.image = UIImage(named: cname[14])
            Button1.setTitle("South Africa", forState: UIControlState.Normal)
            Button2.setTitle("Japan", forState: UIControlState.Normal)
            Button3.setTitle("Brazil", forState: UIControlState.Normal)
            correctAnswer = "2"
             answer = "Japan"
            break
            
        default:
            
            break
            
        }
    }
    
    var count:Int = 0
    
    @IBAction func Button1Action(sender: AnyObject) {
        
        UnHide()
        stopTimer()
        
        if correctAnswer == "1" {
            answerLabel.text =  "You are Correct!"
            count++
            score.text = count.description
            Button1.enabled = false
            Button2.enabled = false
            Button3.enabled = false
        }
        else {
            answerLabel.text = "You are WRONG!!!"
        }
        
    }
    
    
    
    @IBAction func Button2Action(sender: AnyObject) {
        
        UnHide()
        stopTimer()
        
        if correctAnswer == "2" {
            answerLabel.text = "You are Correct!"
            count++
            score.text = count.description
            Button1.enabled = false
            Button2.enabled = false
            Button3.enabled = false
        }
        else {
            answerLabel.text =  "You are WRONG!!!"
        }


    }
    
    
    
    @IBAction func Button3Action(sender: AnyObject) {
        
        UnHide()
        stopTimer()
        
        if correctAnswer == "3" {
            answerLabel.text = "You are Correct!"
            count++
            score.text = count.description
            Button1.enabled = false
            Button2.enabled = false
            Button3.enabled = false
        }
        else {
            answerLabel.text = "You are WRONG!!!"
        }


    }
    
    
    @IBAction func Cancel(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true , completion: nil )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg3.png")!)
        timerLabel.text = String(countTimer)
        startTimer()
        randomQuestions()
        Hide()
        Hide1()

        // Do any additional setup after loading the view.
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
