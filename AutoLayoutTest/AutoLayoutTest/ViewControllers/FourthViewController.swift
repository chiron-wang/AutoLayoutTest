//
//  FourthViewController.swift
//  AutoLayoutTest
//
//  Created by mikewang on 2020/2/15.
//  Copyright © 2020 mikewang. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    let fullSize = UIScreen.main.bounds.size

    override func viewDidLoad() {
        super.viewDidLoad()

        let backButton = UIHelper.createButton(
            title: "Previous",
            target: self, selector: #selector(FourthViewController.goBack),
            frame: CGRect(x: 0, y: Int(fullSize.height - 60), width: Int(fullSize.width * 0.5), height: 50))
        self.view.addSubview(backButton)
        
        let nextButton = UIHelper.createButton(
            title: "Next",
            target: self, selector: #selector(FourthViewController.goNext),
            frame: CGRect(x: Int(fullSize.width * 0.5), y: Int(fullSize.height - 60), width: Int(fullSize.width * 0.5), height: 50))
        self.view.addSubview(nextButton)
    }


    // MARK: - IBAction
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func goNext() {
        let fifthVC = FifthViewController(nibName: String(describing: FifthViewController.self), bundle: nil)
        fifthVC.title = "第五個練習"
        navigationController?.pushViewController(fifthVC, animated: true)
    }

}
