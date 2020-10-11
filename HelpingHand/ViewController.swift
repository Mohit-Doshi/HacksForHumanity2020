//
//  ViewController.swift
//  HelpingHand
//
//  Created by Mohit on 10/11/20.
//  Copyright © 2020 MoDo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LogoImage: UIImageView!
    
    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var CheckIn: UIButton!
    
    @IBOutlet weak var Insights: UIButton!
    
    @IBOutlet weak var Diary: UIButton!
    
    @IBOutlet weak var WelcomeLabel: UILabel!
    
    @IBOutlet weak var Activities: UIButton!
    
    @IBOutlet weak var LoginButton: UIButton!
    override func viewDidLoad() {
        
        LogoImage.image = UIImage(named: "compassion-icon-26.png")
        WelcomeLabel.isHidden = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CheckIn.isHidden = true
        Insights.isHidden = true
        Diary.isHidden = true
        Activities.isHidden = true
        
    }
    
    @IBAction func LoginFunction(_ sender: UIButton) {
        Username.isHidden = true
        Password.isHidden = true
        LoginButton.isHidden = true
        
        WelcomeLabel.isHidden = false
        CheckIn.isHidden = false
        Insights.isHidden = false
        Diary.isHidden = false
        Activities.isHidden = false
        
        WelcomeLabel.text = "Hi \(Username.text!)!"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    


}

