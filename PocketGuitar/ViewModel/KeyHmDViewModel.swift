

import Foundation
import AVFoundation

class KeyHmDViewModel: ObservableObject{
    
    private var player: AVAudioPlayer?
    
    
    public func play1(){
        playSound(name: "D")
        player?.play()
        
    }
    public func play2(){
        playSound(name: "Em")
        player?.play()
        
    }
    public func play3(){
        playSound(name: "Fm#")
        player?.play()
        
    }
    public func play4(){
        playSound(name: "G")
        player?.play()
        
    }
    public func play5(){
        playSound(name: "A")
        player?.play()
        
    }
    public func play6(){
        playSound(name: "Hm")
        player?.play()
        
    }
    public func play7(){
        playSound(name: "F#")
        player?.play()
        
    }
    public func play8(){
        playSound(name: "E")
        player?.play()
        
    }
    
    
    public func stop(){
        player?.stop()
    }
    
    
    
    private func playSound(name: String){
        
        guard let audioPath = Bundle.main.path(forResource: name, ofType: "mp3") else {return}
        
        do{
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
        }catch{
            print(error.localizedDescription)
        }
    }
    
}
