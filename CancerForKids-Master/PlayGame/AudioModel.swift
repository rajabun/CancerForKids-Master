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
    
    static let audioPlayerSingleton = AudioModel()
    init(){}
    
    //Function for play a background audio
    func audioPlay()
    {
        let path = Bundle.main.path(forResource: "Joy & Calm", ofType: "m4a")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
            player?.numberOfLoops = -1
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
    
    func audioBeriAkuNama()
    {
        let path = Bundle.main.path(forResource: "hai!! beri aku nama dong", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioAkuSukaTerimakasih()
    {
        let path = Bundle.main.path(forResource: "aku suka nama yang kamu beri. terimakasih", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioNamaKamuSiapa()
    {
        let path = Bundle.main.path(forResource: "kalau nama kamu siapa?", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioTanggalLahirKamu()
    {
        let path = Bundle.main.path(forResource: "tanggal lahir kamu kapan?", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioSenangSekali()
    {
        let path = Bundle.main.path(forResource: "senang sekali bisa mengenalmu!", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioBagianTubuh()
    {
        let path = Bundle.main.path(forResource: "bagian tubuh mana yang sakit hari ini", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioBagianKepala()
    {
        let path = Bundle.main.path(forResource: "kepalamu", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioKamuAnakKuat()
    {
        let path = Bundle.main.path(forResource: "kamu anak yang kuat, tetap semangat", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioHomeHaloApaKabar()
    {
        let path = Bundle.main.path(forResource: "halo apa kabar", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioBackgroundHome()
    {
        let path = Bundle.main.path(forResource: "BackgroundHome", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
            player?.numberOfLoops = -1
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioBuatMilihKarakter()
    {
        let path = Bundle.main.path(forResource: "BuatMilihKarakter", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
            player?.numberOfLoops = -1
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioMain()
    {
        let path = Bundle.main.path(forResource: "KapitenGame", ofType: "m4a")!
        let url = URL(fileURLWithPath: path)
        
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
            player?.numberOfLoops = -1
        }
        catch
        {
            // couldn't load file :(
            print(error)
        }
    }
    
    func audioStop()
    {
        player?.stop()
    }
    
    func audioPause()
    {
        player?.pause()
    }
    
    func audioRestart()
    {
        player?.prepareToPlay()
        player?.play()
    }
}
