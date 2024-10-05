//
//  IntroductionViewController.swift
//  PersonalizedQuiz
//
//  Created by Kshrugal Reddy Jangalapalli on 10/3/24.
//

import UIKit

class IntroductionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func beingQuizPressed(_ sender: Any) {
        performSegue(withIdentifier: "beginQuiz", sender: nil)
    }
    
    @IBAction func unwindToIntroductionViewController(segue: UIStoryboardSegue) {
        
    }
}

