import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var main_SelectDate: UIDatePicker!
    @IBOutlet weak var main_tvAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func main_buFind(_ sender: Any) {
        let currentDate = Date()
        let userDOB = main_SelectDate.date
        let calender = Calendar.current
        let component = calender.dateComponents([Calendar.Component.year], from: userDOB, to: currentDate)
        main_tvAge.text = "Your Age Is : \(component.year!)"
    }
    
}
