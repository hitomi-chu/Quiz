//
//  QuizViewController.swift
//  Quiz
//
//  Created by Hitomi Chu on 21/9/2020.
//

import UIKit

class QuizViewController: UIViewController {
    
    var quizArray = [Any]()
    
    var correctAnswer: Int = 0
    
    @IBOutlet var quizTextView: UITextView!
    
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    @IBOutlet var choiceButton3: UIButton!
    
    var tmpArray = [Any]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizArray.append(["Who is the youngest member of NiziU?","Rio","Miihi","Nina",3])
        quizArray.append(["Which international school did Rima go to?","St. Mary's","Seisen","Aoba",3])
        quizArray.append(["What is the name of Mako's sister?","Atsuko","Emily","Mika",1])
        quizArray.append(["Who is NOT a rapper?","Rio","Maya","Rima",1])
        quizArray.append(["In which year was Nina born?","2003","2005","2004",2])
        quizArray.append(["Who went to the same school as Momo from TWICE?","Miihi","Mayuka","Riku",2])
        
        quizArray.shuffle()
        
        choiceQuiz()

        // Do any additional setup after loading the view.
    }
    
    func choiceQuiz() {
        let tmpArray = quizArray[0] as! [Any]
        quizTextView.text = tmpArray[0] as? String
        
        choiceButton1.setTitle(tmpArray[1] as? String, for: .normal)
        choiceButton2.setTitle(tmpArray[2] as? String, for: .normal)
        choiceButton3.setTitle(tmpArray[3] as? String, for: .normal)
    }
    
    func performSegueToResult(){
        performSegue(withIdentifier: "toResultView", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toResultView" {
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.correctAnswer = self.correctAnswer
        }
    }
    
    @IBAction func choiceAnswer(sender: UIButton){
        let tmpArray = quizArray[0] as! [Any]
        if tmpArray[4] as! Int == sender.tag {
            correctAnswer = correctAnswer + 1
        }
        
        quizArray.remove(at: 0)
        
        if quizArray.count == 0 {
            performSegueToResult()
        } else {
            choiceQuiz()
        }
        
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
