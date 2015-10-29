 //
//  NationalAnthem.swift
//  project
//
//  Created by Ankam,Mounika on 3/30/15.
//  Copyright (c) 2015 Mounika. All rights reserved.
//

import UIKit
import AVFoundation

class NationalAnthem: UIViewController {

    var name:String!
    
    var playing:Bool = false
   
    @IBOutlet weak var EngLyrics: UIWebView!
    
    @IBOutlet weak var CLangLyrics: UIWebView!
    
    @IBAction func Selection(sender: AnyObject) {
        var selectedoption = (sender as UISegmentedControl).selectedSegmentIndex
        switch selectedoption
        {
        case 0:
            EngLyrics.hidden = false
            CLangLyrics.hidden = true
            
        case 1:
            EngLyrics.hidden = true
            CLangLyrics.hidden = false
        default:
            println()

        }
    
    }
    
    @IBOutlet weak var playBTN: UIButton!
    
    var pauseImage:UIImage = UIImage(named: "pause.png")! as UIImage
    
    var audioPlayer:AVAudioPlayer!
    
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        self.navigationItem.title = name
        
        
        self.navigationController?.navigationBar.tintColor = UIColor.orangeColor()
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg3.png")!)
        
      
        
        var name1 =  name.stringByReplacingOccurrencesOfString(" ", withString: "")
       
        var playAudio = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(name1, ofType: "mp3")!)
        audioPlayer = AVAudioPlayer()
        
        audioPlayer = AVAudioPlayer(contentsOfURL: playAudio, error: nil)
        audioPlayer.prepareToPlay()
        
        
        let filepathEng = NSBundle.mainBundle().pathForResource(name1, ofType: "pdf")
        
        let url = NSURL(string: filepathEng!)
       
        let reqobj = NSURLRequest(URL: url!)
        
        EngLyrics.loadRequest(reqobj)
        
        EngLyrics.backgroundColor = UIColor(patternImage: UIImage(named: "bg3.png")!)
        
        var countryName:String = name1+("CLangLyrics")
        
      
     
        
        let filepathCLang = NSBundle.mainBundle().pathForResource(countryName, ofType: "pdf")
        
        let url1 = NSURL(string: filepathCLang!)
        
        
        let reqobj1 = NSURLRequest(URL: url1!)
        
        CLangLyrics.loadRequest(reqobj1)

        CLangLyrics.backgroundColor = UIColor(patternImage: UIImage(named: "bg3.png")!)

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func playAction(sender: AnyObject) {
        
        if(playing == false) {
        audioPlayer.play()
        
        playBTN.setBackgroundImage(pauseImage, forState: UIControlState.Normal)
            
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
