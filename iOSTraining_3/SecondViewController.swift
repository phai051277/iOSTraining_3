//
//  SecondViewController.swift
//  iOSTraining_3
//
//  Created by 小池基文 on 2018/01/16.
//  Copyright © 2018年 小池基文. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var sendText = ""
    @IBOutlet weak var identiferLabel: UILabel!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        delegate?.secondViewController(self, didTapButton: sender)
    }
    
    @IBAction func closeTapped(_ sender: UIButton) {
        delegate?.delegateClose(self, didTapButton: sender)
    }
    weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        identiferLabel.text = sendText

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
}

protocol SecondViewControllerDelegate: class {
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton)
    func delegateClose(_ viewController: SecondViewController, didTapButton button: UIButton)
}
