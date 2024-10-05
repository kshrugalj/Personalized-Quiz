//
//  ResultsViewController.swift
//  PersonalizedQuiz
//
//  Created by Kshrugal Reddy Jangalapalli on 10/4/24.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var responses: [Answer]!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var resultDefinition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseType = responses.map { $0.type }
        
        for response in responseType {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted{ (pair1, pair2) ->Bool in
            return pair1.value > pair2.value
        }
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultLabel.text = "You are \(mostCommonAnswer.rawValue)!"
        resultDefinition.text = mostCommonAnswer.definition
    }
}
