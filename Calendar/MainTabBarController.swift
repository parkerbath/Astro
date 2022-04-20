//
//  MainTabBarController.swift
//  Astro
//
//  Created by Parker Bath on 4/20/22.
//

import Foundation
import UIKit
import SwiftyAttributes

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let titleLbl = UILabel()
        
        let attributes1: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 35)!, NSAttributedString.Key.foregroundColor: UIColor.red]
        let attributes2: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 35)!, NSAttributedString.Key.foregroundColor: UIColor.orange]
        let attributes3: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 35)!, NSAttributedString.Key.foregroundColor: UIColor.yellow]
        let attributes4: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 35)!, NSAttributedString.Key.foregroundColor: UIColor.green]
        let attributes5: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 35)!, NSAttributedString.Key.foregroundColor: UIColor.systemBlue]

        titleLbl.attributedText = NSAttributedString(string: "A ", attributes: attributes1) + NSAttributedString(string: "S ", attributes: attributes2) + NSAttributedString(string: "T ", attributes: attributes3) + NSAttributedString(string: "R ", attributes: attributes4) + NSAttributedString(string: "O", attributes: attributes5)
        titleLbl.sizeToFit()
        self.navigationItem.titleView = titleLbl
        
    }

    
}
