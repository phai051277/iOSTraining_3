//
//  SampleViewController.swift
//  iOSTraining_3
//
//  Created by 小池基文 on 2018/01/15.
//  Copyright © 2018年 小池基文. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController, SecondViewControllerDelegate{

    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        label.text = "Push!!"
    }

    @IBAction func unwindToSampleViewController(segue: UIStoryboardSegue) {
        //
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Test Sample!!"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
//        performSegue(withIdentifier: "presentSecondViewController", sender: self)
        guard let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController  else {
            return
        }
        secondViewController.delegate = self
        present(secondViewController, animated: true, completion: nil)
    }
    
    @IBAction func secondSegue(_ sender: UIButton) {
        performSegue(withIdentifier: "secondSegueIdentifer", sender: self)
    }
    
    @IBAction func secondPresent(_ sender: UIButton) {
        guard let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }
        secondViewController.delegate = self
        present(secondViewController, animated: true, completion: nil)
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let secondViewController:SecondViewController = segue.destination as! SecondViewController
        secondViewController.sendText = "segue Argument"
    }
    
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    func delegateClose(_ viewController: SecondViewController, didTapButton button: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
