//
//  AnthemQuiz.swift
//  project
//
//  Created by Ankam,Mounika on 3/27/15.
//  Copyright (c) 2015 Mounika. All rights reserved.
//

import UIKit
import AVFoundation

class AnthemQuiz: UIViewController {
    
    var counter = 60
    var timer:NSTimer = NSTimer()
    var correctAnswer:String!
    var count = 0
     var index:Int = 0
    var playing:Bool = false
    var answer:String!
    var audioPlayerInd:AVAudioPlayer!
    
    var name:[String] = ["India","Canada","Mexico","Pakistan","Sri Lanka","Zimbabwe"]
    
    @IBOutlet weak var AnthemSlider: UISlider!
    
    @IBOutlet weak var showAnswer: UILabel!


    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
    
    @IBOutlet weak var Button3: UIButton!
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBAction func NextQuestion(sender: AnyObject) {
        counter = 60
        startTimer()
          Hide()
         randomQuestions()
        Button1.enabled = true
        Button2.enabled = true
        Button3.enabled = true
        Hide1()
        playButton.setBackgroundImage(UIImage(named: "play.png"), forState: UIControlState.Normal)
         playing = false

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


    
    
    @IBAction func Button1Action(sender: AnyObject) {
        
        UnHide()
        timer.invalidate()
        audioPlayerInd.stop()
        
        if correctAnswer == "1" {
            answerLabel.text =  "You are Correct!"
            count++
            scoreLabel.text = count.description
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
        timer.invalidate()
         audioPlayerInd.stop()
        
        if correctAnswer == "2" {
            answerLabel.text =  "You are Correct!"
            count++
            scoreLabel.text = count.description
            Button1.enabled = false
            Button2.enabled = false
            Button3.enabled = false
        }
        else {
            answerLabel.text = "You are WRONG!!!"
        }
    }
    
   
    @IBAction func Button3Action(sender: AnyObject) {
        
         UnHide()
        timer.invalidate()
         audioPlayerInd.stop()
        if correctAnswer == "3" {
            answerLabel.text =  "You are Correct!"
            count++
            scoreLabel.text = count.description
            Button1.enabled = false
            Button2.enabled = false
            Button3.enabled = false
        }
        else {
            answerLabel.text = "You are WRONG!!!"
        }
    }
    
    func UpdateTimer(){
        timeLabel.text = String(counter--)
        if counter == -1 {
            
            Hide()
            UnHide1()
            audioPlayerInd.stop()
            timer.invalidate()
            Button1.enabled = false
            Button2.enabled = false
            Button3.enabled = false
            showAnswer.text = "Answer is \(answer)"
            
        }
    }
    
    func startTimer() {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self , selector: Selector("UpdateTimer"), userInfo: nil , repeats: true )
    }
    
    
    @IBAction func playAction(sender: AnyObject) {
        startTimer()
        if(playing == false) {
            audioPlayerInd.play()
            
            playButton.setBackgroundImage(UIImage(named: "pause.png"), forState: UIControlState.Normal)
            
            playing = true
        }
            
        else if playing == true {
            audioPlayerInd.pause()
            
            playButton.setBackgroundImage(UIImage(named: "play.png"), forState: UIControlState.Normal)
            
            playing = false
        }
        

    }
    
    
        
    @IBAction func changeAnthemTime(sender: AnyObject) {
        
        audioPlayerInd.stop()
        audioPlayerInd.currentTime = NSTimeInterval(AnthemSlider.value)
        audioPlayerInd.prepareToPlay()
        audioPlayerInd.play()
        
    }
    
    func updateAnthemSlider() {
        AnthemSlider.value = Float(audioPlayerInd.currentTime)
        
        
    }
    override func viewDidLoad() {
        
           super.viewDidLoad()
          self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg3.png")!)
       
        randomQuestions()

        timeLabel.text = String(counter)
        
        AnthemSlider.maximumValue = Float(audioPlayerInd.duration)
        var timer1 = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self , selector: Selector("updateAnthemSlider"), userInfo: nil , repeats: true )
         Hide()
        Hide1()
     

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Cancel(sender: AnyObject) {
        audioPlayerInd.stop()
        
        self.dismissViewControllerAnimated(true , completion: nil )
    }
    
    func randomQuestions(){
        
        
            
            
            var playAudioInd = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(name[index], ofType: "mp3")!)
            audioPlayerInd = AVAudioPlayer(contentsOfURL: playAudioInd, error: nil)
            audioPlayerInd.prepareToPlay()
     

       
        
        switch(index) {
            
        case 0:
           
           
            Button1.setTitle("India", forState: UIControlState.Normal)
            Button2.setTitle("Australia", forState: UIControlState.Normal)
            Button3.setTitle("Mexico", forState: UIControlState.Normal)
            correctAnswer = "1"
            answer = "India"
            break
            
        case 1:
           
           
            Button1.setTitle("Pakistan", forState: UIControlState.Normal)
            Button2.setTitle("Canada", forState: UIControlState.Normal)
            Button3.setTitle("Mexico", forState: UIControlState.Normal)
            correctAnswer = "2"
             answer = "Canada"
            break

        case 2:
            
            
            Button1.setTitle("South Africa", forState: UIControlState.Normal)
            Button2.setTitle("Australia", forState: UIControlState.Normal)
            Button3.setTitle("Mexico", forState: UIControlState.Normal)
            correctAnswer = "3"
               answer = "Mexico"
            break

        case 3:
            
         
            Button1.setTitle("India", forState: UIControlState.Normal)
            Button2.setTitle("Pakistan", forState: UIControlState.Normal)
            Button3.setTitle("Australia", forState: UIControlState.Normal)
            correctAnswer = "2"
              answer = "Pakistan"
            break

            
        case 4:
          
            Button1.setTitle("Mexico", forState: UIControlState.Normal)
            Button2.setTitle("Australia", forState: UIControlState.Normal)
            Button3.setTitle("Sri Lanka", forState: UIControlState.Normal)
            correctAnswer = "3"
              answer = "Sri Lanka"
            break
            
        case 5:
            
         
            Button1.setTitle("Zimbabwe", forState: UIControlState.Normal)
            Button2.setTitle("Australia", forState: UIControlState.Normal)
            Button3.setTitle("Sri Lanka", forState: UIControlState.Normal)
            correctAnswer = "1"
              answer = "Zimbabwe"
            break


        default:
            
            break
        }
        
        if(index < 6) {
            index = index + 1
        }
       
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
