//
//  SoundFileManager.swift
//  FreeThrow
//
//  Created by hideyuki on 2016/09/02.
//  Copyright © 2016年 hideyuki. All rights reserved.
//

import Foundation

enum SoundFileType {
    case tapbutton
    case back
    case err
    
    private var name: String {
        switch self {
        case .tapbutton:
            return "sound_tapbutton"
        case .back:
            return "sound_back"
        case .err:
            return "sound_err"
        }
    }
    
    private var ofType: String {
        switch self {
        case .tapbutton, .back, .err:
            return "mp3"
        }
    }
    
    private var numberOfLoops: Int {
        switch self {
        case .tapbutton, .back, .err:
            return 0
        }
    }
    
    func play() {
        SoundPlayer.instace.play(name: self.name, ofType: self.ofType, numberOfLoops: self.numberOfLoops)
    }
}