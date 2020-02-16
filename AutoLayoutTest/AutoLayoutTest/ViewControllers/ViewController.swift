//
//  ViewController.swift
//  AutoLayoutTest
//
//  Created by mikewang on 2020/2/14.
//  Copyright © 2020 mikewang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let fullSize = UIScreen.main.bounds.size

    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonFrame = CGRect(x: 0, y: fullSize.height-50, width: fullSize.width, height: 44)
        let myButton = UIHelper.createButton(title: "下一個練習", target: self, selector: #selector(self.goNext), frame: buttonFrame)
        self.view.addSubview(myButton)
    }
    
    // MARK: - IBAction
    
    @objc func goNext() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "Second")
        secondVC.title = "第二個練習"
        
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    // MARK: Functional Methods
    
//    func createButton() -> UIButton {
//        let button = UIButton(frame: CGRect(x: 0, y: fullSize.height - 50, width: fullSize.width, height: 44))
//        button.backgroundColor = .lightGray
//        button.setTitle("下一個練習", for: .normal)
//        button.setTitleColor(.red, for: .normal)
//        button.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 22.0)
//        button.addTarget(self, action: #selector(ViewController.goNext), for: .touchUpInside)
//
//        return button
//    }
}
