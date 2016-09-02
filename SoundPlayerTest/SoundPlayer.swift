//
//  SoundPlayer.swift
//  FreeThrow
//
//  Created by hideyuki on 2016/09/02.
//  Copyright © 2016年 hideyuki. All rights reserved.
//

import Foundation
import AVFoundation

final class SoundPlayer {
    static var instace = SoundPlayer()
    
    private init() {
        
    }
    
    private var audioPlayer: AVAudioPlayer?
    
    func play(name name: String, ofType ext: String, numberOfLoops: Int) {
        guard let path = NSBundle.mainBundle().pathForResource(name, ofType: ext) else {
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path), fileTypeHint: nil)
            
            audioPlayer?.numberOfLoops = numberOfLoops
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        }catch {
            
        }
    }
}