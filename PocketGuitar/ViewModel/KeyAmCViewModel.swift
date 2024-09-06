
import Foundation

import AVFoundation


class KeyAmCViewModel: ObservableObject{
    
    private var player: AVAudioPlayer?
    
    
    public func play1(){
        playAudio(name: "C")
        player?.play()
    }
    public func play2(){
        playAudio(name: "Dm")
        player?.play()
    }
    public func play3(){
        playAudio(name: "Em")
        player?.play()
    }
    public func play4(){
        playAudio(name: "F")
        player?.play()
    }
    public func play5(){
        playAudio(name: "G")
        player?.play()
    }
    public func play6(){
        playAudio(name: "Am")
        player?.play()
    }
    public func play7(){
        playAudio(name: "E")
        player?.play()
    }
    public func play8(){
        playAudio(name: "D")
        player?.play()
    }
    public func stop(){
        player?.stop()
    }
    
    private func playAudio(name: String){
        
        guard let audioPath = Bundle.main.path(forResource: name, ofType: "mp3") else {return}
        
        do{
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
        }catch{
            print(error.localizedDescription)
        }
        
    }
    
    
}
