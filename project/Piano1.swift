//
//  Piano1.swift
//  project
//
//  Created by Ankam,Mounika on 3/30/15.
//  Copyright (c) 2015 Mounika. All rights reserved.
//

import UIKit
import AVFoundation

class Piano1: UIViewController {
    
    @IBOutlet weak var cName: UILabel!
    var name:String!
      var playing:Bool = false
     var audioPlayer:AVAudioPlayer!
    var highlighted:Bool = true
    
    @IBOutlet var playBTN:UIButton!
    
    @IBOutlet weak var C3: UIButton!
    
    @IBOutlet weak var D3: UIButton!
    
    @IBOutlet weak var E3: UIButton!
    
    @IBOutlet weak var F3: UIButton!
    
    @IBOutlet weak var G3: UIButton!
    
    @IBOutlet weak var A3: UIButton!
    
    @IBOutlet weak var B3: UIButton!
    
    @IBOutlet weak var C4: UIButton!
    
    @IBOutlet weak var D4: UIButton!
    
    @IBOutlet weak var E4: UIButton!
    
    @IBOutlet weak var F4: UIButton!
    
    @IBOutlet weak var G4: UIButton!
    
    @IBOutlet weak var A4: UIButton!
    
    @IBOutlet weak var B4: UIButton!
    
    @IBOutlet weak var C5: UIButton!
    var pianoSoundC3 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("C3", ofType: "mp3")!)
    var audioplayerC3 = AVAudioPlayer()
    
    var pianoSoundCS = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("C#", ofType: "mp3")!)
    var audioPlayerCS = AVAudioPlayer()
    
    var pianoSoundD = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("D", ofType: "mp3")!)
    var audioPlayerD = AVAudioPlayer()
    
    var pianoSoundDS = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("D#", ofType: "mp3")!)
    var audioPlayerDS = AVAudioPlayer()
    
    var pianoSoundE = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("E", ofType: "mp3")!)
    var audioPlayerE = AVAudioPlayer()
    
    var pianoSoundF = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("F", ofType: "mp3")!)
    var audioPlayerF = AVAudioPlayer()
    
    var pianoSoundFS = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("F#", ofType: "mp3")!)
    var audioPlayerFS = AVAudioPlayer()
    
    var pianoSoundG = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("G", ofType: "mp3")!)
    var audioPlayerG = AVAudioPlayer()
    
    var pianoSoundGS = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("G#", ofType: "mp3")!)
    var audioPlayerGS = AVAudioPlayer()
    
    var pianoSoundA = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("A", ofType: "mp3")!)
    var audioPlayerA = AVAudioPlayer()
    
    var pianoSoundAS = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("A#", ofType: "mp3")!)
    var audioPlayerAS = AVAudioPlayer()
    
    var pianoSoundB = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("B", ofType: "mp3")!)
    var audioPlayerB = AVAudioPlayer()
    
    var pianoSoundC4 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("C4", ofType: "mp3")!)
    var audioPlayerC4 = AVAudioPlayer()
    
        var pianoSoundC4S = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("C#4", ofType: "mp3")!)
        var audioPlayerC4S = AVAudioPlayer()
    
        var pianoSoundD4 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("D4", ofType: "mp3")!)
        var audioPlayerD4 = AVAudioPlayer()
    
        var pianoSoundD4S = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("D#4", ofType: "mp3")!)
        var audioPlayerD4S = AVAudioPlayer()
    
        var pianoSoundE4 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("E4", ofType: "mp3")!)
        var audioPlayerE4 = AVAudioPlayer()
    
        var pianoSoundF4 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("F4", ofType: "mp3")!)
        var audioPlayerF4 = AVAudioPlayer()
    
        var pianoSoundF4S = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("F#4", ofType: "mp3")!)
        var audioPlayerF4S = AVAudioPlayer()
    
        var pianoSoundG4 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("G4", ofType: "mp3")!)
        var audioPlayerG4 = AVAudioPlayer()
    
        var pianoSoundG4S = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("G#4", ofType: "mp3")!)
        var audioPlayerG4S = AVAudioPlayer()
    
        var pianoSoundA4 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("A4", ofType: "mp3")!)
        var audioPlayerA4 = AVAudioPlayer()
    
        var pianoSoundA4S = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("A#4", ofType: "mp3")!)
        var audioPlayerA4S = AVAudioPlayer()
    
        var pianoSoundB4 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("B4", ofType: "mp3")!)
        var audioPlayerB4 = AVAudioPlayer()
    
        var pianoSoundC5 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("C5", ofType: "mp3")!)
        var audioPlayerC5 = AVAudioPlayer()
    

    
  
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Landscape.rawValue)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        cName.text = name
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg3.png")!)
         C3.backgroundColor = UIColor.whiteColor()
         D3.backgroundColor = UIColor.whiteColor()
         E3.backgroundColor = UIColor.whiteColor()
         F3.backgroundColor = UIColor.whiteColor()
         G3.backgroundColor = UIColor.whiteColor()
         A3.backgroundColor = UIColor.whiteColor()
         B3.backgroundColor = UIColor.whiteColor()
         C4.backgroundColor = UIColor.whiteColor()
         D4.backgroundColor = UIColor.whiteColor()
         E4.backgroundColor = UIColor.whiteColor()
         F4.backgroundColor = UIColor.whiteColor()
         G4.backgroundColor = UIColor.whiteColor()
         A4.backgroundColor = UIColor.whiteColor()
         B4.backgroundColor = UIColor.whiteColor()
         C5.backgroundColor = UIColor.whiteColor()
        
        var playAudio = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(name, ofType: "mp3")!)
        audioPlayer = AVAudioPlayer()
        
        audioPlayer = AVAudioPlayer(contentsOfURL: playAudio, error: nil)
        audioPlayer.prepareToPlay()
        

        
        audioplayerC3 = AVAudioPlayer(contentsOfURL: pianoSoundC3, error: nil)
        audioplayerC3.prepareToPlay()
        
        audioPlayerCS = AVAudioPlayer(contentsOfURL: pianoSoundCS, error: nil)
        audioPlayerCS.prepareToPlay()
        
        audioPlayerD = AVAudioPlayer(contentsOfURL: pianoSoundD, error: nil)
        audioPlayerD.prepareToPlay()
        
        audioPlayerDS = AVAudioPlayer(contentsOfURL: pianoSoundDS, error: nil)
        audioPlayerDS.prepareToPlay()
        
        audioPlayerE = AVAudioPlayer(contentsOfURL: pianoSoundE, error: nil)
        audioPlayerE.prepareToPlay()
        
        audioPlayerF = AVAudioPlayer(contentsOfURL: pianoSoundF, error: nil)
        audioPlayerF.prepareToPlay()
        
        audioPlayerFS = AVAudioPlayer(contentsOfURL: pianoSoundFS, error: nil)
        audioPlayerFS.prepareToPlay()
        
        audioPlayerG = AVAudioPlayer(contentsOfURL: pianoSoundG, error: nil)
        audioPlayerG.prepareToPlay()
        
        audioPlayerGS = AVAudioPlayer(contentsOfURL: pianoSoundGS, error: nil)
        audioPlayerGS.prepareToPlay()
        
        audioPlayerA = AVAudioPlayer(contentsOfURL: pianoSoundA, error: nil)
        audioPlayerA.prepareToPlay()
        
        audioPlayerAS = AVAudioPlayer(contentsOfURL: pianoSoundAS, error: nil)
        audioPlayerAS.prepareToPlay()
        
        audioPlayerB = AVAudioPlayer(contentsOfURL: pianoSoundB, error: nil)
        audioPlayerB.prepareToPlay()
        
            audioPlayerC4 = AVAudioPlayer(contentsOfURL: pianoSoundC4, error: nil)
              audioPlayerC4.prepareToPlay()
        
                audioPlayerC4S = AVAudioPlayer(contentsOfURL: pianoSoundC4S, error: nil)
                audioPlayerC4S.prepareToPlay()
        
                audioPlayerD4  = AVAudioPlayer(contentsOfURL: pianoSoundD4, error: nil)
                audioPlayerD4 .prepareToPlay()
        
                audioPlayerD4S = AVAudioPlayer(contentsOfURL: pianoSoundD4S, error: nil)
                audioPlayerD4S.prepareToPlay()
        
                audioPlayerE4 = AVAudioPlayer(contentsOfURL: pianoSoundE4, error: nil)
                audioPlayerE4.prepareToPlay()
        
                audioPlayerF4  = AVAudioPlayer(contentsOfURL: pianoSoundF4, error: nil)
                audioPlayerF4.prepareToPlay()
        
                audioPlayerF4S = AVAudioPlayer(contentsOfURL: pianoSoundF4S, error: nil)
                audioPlayerF4S.prepareToPlay()
        
                audioPlayerG4 = AVAudioPlayer(contentsOfURL: pianoSoundG4, error: nil)
                audioPlayerG4.prepareToPlay()
        
                audioPlayerG4S = AVAudioPlayer(contentsOfURL: pianoSoundG4S, error: nil)
                audioPlayerG4S.prepareToPlay()
        
                audioPlayerA4 = AVAudioPlayer(contentsOfURL: pianoSoundA4, error: nil)
                audioPlayerA4.prepareToPlay()
        
                audioPlayerA4S = AVAudioPlayer(contentsOfURL: pianoSoundA4S, error: nil)
                audioPlayerA4S.prepareToPlay()
        
                audioPlayerB4 = AVAudioPlayer(contentsOfURL: pianoSoundB4, error: nil)
                audioPlayerB4.prepareToPlay()
                
                audioPlayerC5 = AVAudioPlayer(contentsOfURL: pianoSoundC5, error: nil)
                audioPlayerC5.prepareToPlay()


        // Do any additional setup after loading the view.
    }

    @IBAction func C3(sender: UIButton) {
        audioplayerC3.currentTime = 0
        audioplayerC3.play()
      
    }
    
    @IBAction func CS(sender: UIButton) {
        audioPlayerCS.currentTime = 0
        audioPlayerCS.play()
        
    }
    
    @IBAction func D(sender: UIButton) {
        audioPlayerD.currentTime = 0
        audioPlayerD.play()
       
    }
    
    @IBAction func DS(sender: UIButton) {
        audioPlayerDS.currentTime = 0
        audioPlayerDS.play()
        
    }
    
    
    @IBAction func E(sender: UIButton) {
        audioPlayerE.currentTime = 0
        audioPlayerE.play()
       
    }
    
    
    @IBAction func F(sender: UIButton) {
        audioPlayerF.currentTime = 0
        audioPlayerF.play()
        
    }
    
    @IBAction func FS(sender: UIButton) {
        audioPlayerFS.currentTime = 0
        audioPlayerFS.play()
        
    }
    
    
    @IBAction func G(sender: UIButton) {
        audioPlayerG.currentTime = 0
        audioPlayerG.play()
       
    }
    
    @IBAction func GS(sender: UIButton) {
        audioPlayerGS.currentTime = 0
        audioPlayerGS.play()
        
    }
    
    
    @IBAction func A(sender: UIButton) {
        audioPlayerA.currentTime = 0
        audioPlayerA.play()
            }
    
    
    @IBAction func AS(sender: UIButton) {
        audioPlayerAS.currentTime = 0
        audioPlayerAS.play()
    }
    
    
    @IBAction func B(sender: UIButton) {
        audioPlayerB.currentTime = 0
        audioPlayerB.play()
            }
    
      @IBAction func C4(sender: UIButton) {
        audioPlayerC4.currentTime = 0
        audioPlayerC4.play()
        
    }
    
        @IBAction func C4S(sender: UIButton) {
            audioPlayerC4S.currentTime = 0
            audioPlayerC4S.play()
    
    
        }
    
    
        @IBAction func D4(sender: UIButton) {
            audioPlayerD4.currentTime = 0
            audioPlayerD4.play()
            
        }
    
    
        @IBAction func D4S(sender: UIButton) {
            audioPlayerD4S.currentTime = 0
            audioPlayerD4S.play()
    
        }
    
        @IBAction func E4(sender: UIButton) {
            audioPlayerE4.currentTime = 0
            audioPlayerE4.play()
           
    
        }
    
    
        @IBAction func F4(sender: UIButton) {
            audioPlayerF4.currentTime = 0
            audioPlayerF4.play()
           
    
        }
    
    
        @IBAction func F4S(sender: UIButton) {
            audioPlayerF4S.currentTime = 0
            audioPlayerF4S.play()
    
        }
    
        @IBAction func G4(sender: UIButton) {
            audioPlayerG4.currentTime = 0
            audioPlayerG4.play()
            }
    
        @IBAction func G4S(sender: UIButton) {
            audioPlayerG4S.currentTime = 0
            audioPlayerG4S.play()
    
        }
    
    
        @IBAction func A4(sender: UIButton) {
            audioPlayerA4.currentTime = 0
            audioPlayerA4.play()
            
    
        }
    
        @IBAction func A4S(sender: UIButton) {
            audioPlayerA4S.currentTime = 0
            audioPlayerA4S.play()
    
        }
        
        @IBAction func B4(sender: UIButton) {
            audioPlayerB4.currentTime = 0
            audioPlayerB4.play()
           
    
        }
        
        
        @IBAction func C5(sender: UIButton) {
            audioPlayerC5.currentTime = 0
            audioPlayerC5.play()
            
    
        }
    
    @IBAction func playAction(sender: AnyObject) {
        
        if(playing == false) {
            audioPlayer.play()
            
            playBTN.setBackgroundImage(UIImage(named: "pause.png"), forState: UIControlState.Normal)
            
            playing = true
        }
            
        else if playing == true {
            audioPlayer.pause()
            
            playBTN.setBackgroundImage(UIImage(named: "play.png"), forState: UIControlState.Normal)
            
            playing = false
        }
        
    }
    
    
    @IBAction func stopAction(sender: AnyObject) {
        audioPlayer.stop()
        
        playBTN.setBackgroundImage(UIImage(named: "play.png"), forState: UIControlState.Normal)
        playing = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Done(sender: AnyObject) {
        self.dismissViewControllerAnimated(true , completion: nil)
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
