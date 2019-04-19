
import UIKit

class EndViewController: UIViewController {
    
    @IBOutlet weak var stopwatchLabel: UILabel!
    @IBOutlet weak var emoji: UIImageView!
    @IBOutlet weak var endStateLabel: UILabel!
    
    var stopwatchString = String()
    var isWon = Bool()
    var images = [UIImage(named: "happy"), UIImage(named: "sad")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if isWon {
            emoji.image = images[0]
            endStateLabel.text = "You Won"
        } else {
            emoji.image = images[1]
            endStateLabel.text = "You Lost"
        }
        stopwatchLabel.text = "time: " + stopwatchString
    }
    
    @IBAction func playAgainAction(_ sender: Any) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let gameNavigation = mainStoryboard.instantiateViewController(withIdentifier: "GameNavigationController") as? UINavigationController else {
            return
        }
        gameNavigation.popViewController(animated: true)
        present(gameNavigation, animated: true, completion: nil)
    }
    
    @IBAction func mainAction(_ sender: UIButton) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let mainNavigation = mainStoryboard.instantiateViewController(withIdentifier: "MainNavigationController") as? UINavigationController else {
            return
        }
        mainNavigation.popViewController(animated: true)
        present(mainNavigation, animated: true, completion: nil)
    }
}
