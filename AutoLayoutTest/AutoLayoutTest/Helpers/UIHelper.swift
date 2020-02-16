//
//  UIHelper.swift
//  AutoLayoutTest
//
//  Created by mikewang on 2020/2/15.
//  Copyright © 2020 mikewang. All rights reserved.
//

import Foundation
import UIKit

public class UIHelper: NSObject {
    @objc static func createButton(title: String,target: AnyObject, selector: Selector, frame: CGRect) -> UIButton {
        let button = UIButton(frame: frame)
        button.backgroundColor = .lightGray
        button.setTitle(title, for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica Neue", size: 22.0)
        button.addTarget(target, action: selector, for: .touchUpInside)
        
        return button
    }
}
