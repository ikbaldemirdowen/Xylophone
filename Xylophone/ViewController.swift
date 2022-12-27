

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    var player: AVAudioPlayer!
    var keyName : String?
    var backgroundColor : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        backgroundColor = sender.backgroundColor
        mainView.backgroundColor = backgroundColor
        playSound(sender.currentTitle!)
    }
    
    func playSound(_ soundName : String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
