
import UIKit

class ElaborateViewController: UIViewController {

    weak var activity : UIActivity?
    var items: [AnyObject]

    init(activity:UIActivity, items:[AnyObject]) {
        self.activity = activity
        self.items = items
        super.init(nibName: "ElaborateViewController", bundle: nil)
    }
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    @IBAction func doCancel(sender:AnyObject) {
        self.activity?.activityDidFinish(false)
    }
    
    @IBAction func doDone(sender:AnyObject) {
        self.activity?.activityDidFinish(true)
    }
    
    deinit{
        println("elaborate view controller dealloc")
    }

}
