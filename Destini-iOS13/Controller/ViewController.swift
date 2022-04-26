
import UIKit

class ViewController: UIViewController {
    var storyBrain = StoryBrain()

    var quesNum = 0
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBAction func choiceMade(_ sender: UIButton) {
        quesNum = storyBrain.nextStory(userChoice: sender.titleLabel!.text!)
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI() {
        storyLabel.text = storyBrain.stories[quesNum].title
        choice1Button.setTitle(storyBrain.stories[quesNum].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[quesNum].choice2, for: .normal)
    }


}

