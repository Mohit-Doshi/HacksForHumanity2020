//
//  CheckInViewController.swift
//  HelpingHand
//
//  Created by Mohit on 10/11/20.
//  Copyright © 2020 MoDo. All rights reserved.
//

import UIKit

class CheckInViewController: UIViewController {
    
    var usern:String?
    @IBOutlet weak var BQ1: UIButton!
    @IBOutlet weak var BQ2: UIButton!
    @IBOutlet weak var BQ3: UIButton!
    @IBOutlet weak var NextB: UIButton!
    
    @IBOutlet weak var Congratslabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(usern!)
        // Do any additional setup after loading the view.
        // trigger popups here
        
//        let ac = UIAlertController(title: "Question 1 of 3", message: nil, preferredStyle: .alert)
//        ac.addTextField()
//        let bc = UIAlertController(title: "Question 2 of 3", message: nil, preferredStyle: .alert)
//        bc.addTextField()
//        let cc = UIAlertController(title: "Question 3 of 3", message: nil, preferredStyle: .alert)
//        bc.addTextField()
//
//
//        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
//            let ans = "\(ac.textFields![0])"
//            // do something interesting with "ans" here
//        }
//
//        ac.addAction(submitAction)
//        bc.addAction(submitAction)
//        cc.addAction(submitAction)
//
////        present(ac, animated: true)
////        present(bc, animated: true)
////        present(cc, animated: true)
//        print(usern!)
        
        Congratslabel.isHidden = true
        NextB.isHidden = true
        
    }
    
    
    
    @IBAction func Question1(_ sender: Any) {
        
        let ac = UIAlertController(title: "Question 1 of 3", message: nil, preferredStyle: .alert)
        
        ac.addTextField { (textField) in
            textField.text = "Rate how happy you feel 1-10"
        }
        ac.addTextField()
        ac.addTextField { (textField) in
            textField.text = "Rate how excited you feel 1-10"
        }
        ac.addTextField()
        ac.addTextField { (textField) in
            textField.text = "Rate how sad you feel 1-10"
        }
        ac.addTextField()
        ac.addTextField { (textField) in
            textField.text = "Rate how angry you feel 1-10"
        }
        ac.addTextField()
        ac.addTextField { (textField) in
            textField.text = "Rate how fearful you feel 1-10"
        }
        ac.addTextField()
        ac.addTextField { (textField) in
            textField.text = "Are you feeling depressed (Yes/No)"
        }
        ac.addTextField()
        
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
            let happy = "\(ac.textFields![1].text)"
            let excited = "\(ac.textFields![3].text)"
            let sad = "\(ac.textFields![5].text)"
            let angry = "\(ac.textFields![7].text)"
            let ff = "\(ac.textFields![9].text)"
            let depressed = "\(ac.textFields![11].text)"
            // do something interesting with "ans" here
            print(happy + " " + sad + " " + angry + " " + ff + " " + depressed)
            self.BQ1.setTitle("Completed ✅", for: .normal)
            self.BQ1.backgroundColor = UIColor.green
            
        }
        
        ac.addAction(submitAction)
        present(ac, animated: true)
    }
    
    
    @IBAction func Question2(_ sender: Any) {
        
         let bc = UIAlertController(title: "Question 2 of 3", message: "Share why you're feeling this way", preferredStyle: .alert)
        bc.addTextField()
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned bc] _ in
            let ans = "\(bc.textFields![0].text)"
            
            self.BQ2.setTitle("Completed ✅", for: .normal)
            self.BQ2.backgroundColor = UIColor.green
            
            print(ans)
            
        }
        
        bc.addAction(submitAction)
        present(bc, animated: true)
    }
    
    
    @IBAction func Question3(_ sender: Any) {
        let refreshAlert = UIAlertController(title: "Question 3 of 3", message: "Would you like to explore activities or contact a professional", preferredStyle: UIAlertController.Style.alert)

        refreshAlert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
//              print("Handle Ok logic here")
            
            self.BQ3.setTitle("Completed ✅", for: .normal)
            self.BQ3.backgroundColor = UIColor.green
            self.Congratslabel.isHidden = false
            self.Congratslabel.text = "Well done \(self.usern!)"
            self.NextB.isHidden = false
            
        }))

        refreshAlert.addAction(UIAlertAction(title: "No", style: .cancel, handler: { (action: UIAlertAction!) in
              print("Handle Cancel Logic here")
            self.BQ3.setTitle("Completed ✅", for: .normal)
            self.BQ3.backgroundColor = UIColor.green
            self.Congratslabel.isHidden = false
            self.Congratslabel.text = "Well done \(self.usern!)"
            self.NextB.isHidden = false

        }))

        present(refreshAlert, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
