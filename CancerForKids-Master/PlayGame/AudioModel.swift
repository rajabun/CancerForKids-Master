//
//  AudioModel.swift
//  BelajarAnimasiDenganSpriteKit
//
//  Created by Muhammad Rajab Priharsanto on 23/08/19.
//  Copyright © 2019 Muhammad Rajab Priharsanto. All rights reserved.
//

import AVFoundation

class AudioModel
{
    var player: AVAudioPlayer?
    
    //Function for play a background audio
    func audioPlay()
    {
        let path = Bundle.main.path(forResource: "Joy & Calm", ofType: "m4a")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            player?.numberOfLoops = 5
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioClick()
    {
        let path = Bundle.main.path(forResource: "Switch-Click", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
        //free license audio by : http://soundbible.com/1705-Click2.html
    }
}
