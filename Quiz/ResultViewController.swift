//
//  ResultViewController.swift
//  Quiz
//
//  Created by Hitomi Chu on 21/9/2020.
//

import UIKit

class ResultViewController: UIViewController {
    
    var correctAnswer: Int = 0
    
    @IBOutlet var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = String(correctAnswer)

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func back() {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
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
