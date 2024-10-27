import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        // print background color of button being pressed
        //print(sender.titleLabel?.text)
        //print(sender.currentTitle)
        playSound(soundName: sender.currentTitle!)
        
        // lowers opacity to 50% after pressed
        sender.alpha = 0.5
        
        // raised opacity to 100% after 0.2 second delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
             //Bring's sender's opacity back up to fully opaque.
             sender.alpha = 1.0
         }
        
    }
    
    func playSound(soundName: String) {
        print("Start")
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        let seconds = 0.2
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
        print("End")
        
        }
        
    }
}
