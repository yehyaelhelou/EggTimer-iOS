
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progessBar: UIProgressView!
    let eggTimes  = ["Soft": 5 , "Medium":7 , "Hard": 12]
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        progessBar.progress = 0.1
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [unowned self] timer in
            if self.totalTime > 0 {
                print("\(self.totalTime) seconds.")
                self.secondPassed += 1
            } else {
                timer.invalidate()
            }
        }
        
        func updateTimer(){
            if totalTime > 0 {
                print("\(totalTime) seconds")
            }
        }
                
    }
}
