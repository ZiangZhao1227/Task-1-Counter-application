import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var smallResultLabel: UILabel!
    
    @IBOutlet weak var stepper:UIStepper!
    
    @IBOutlet weak var increasementButton:UIButton!
    @IBOutlet weak var decreasementButton:UIButton!
    
    let counter = Counter( 0, to: 100)
    
    let defaultCounter = Counter()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = String(counter.value)
        
        smallResultLabel.text = String(Int(stepper.value))
        
        print(counter.lower,counter.value,counter.upper)
        
        print(defaultCounter.lower,defaultCounter.value,defaultCounter.upper
        )
    }
    
    @IBAction func plusAction(_ sender: UIButton) {
        counter.increase(by: Int(stepper.value))
        resultLabel.text = String(counter.value)
        
    }
    
    @IBAction func minusAction(_ sender: UIButton) {
        counter.decrease(by: Int(stepper.value))
        resultLabel.text = String(counter.value)

    }
    
    @IBAction func steppervaluechanged(_ sender: UIStepper) {
        smallResultLabel.text = String(Int(stepper.value))
    }
}
