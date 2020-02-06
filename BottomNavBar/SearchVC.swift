//
//  SearchVC.swift
//  BottomNavBar
//
//  Created by Salih Yusuf Cankurt on 4.02.2020.
//  Copyright © 2020 Salih Yusuf Cankurt. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    var myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        let width = view.frame.size.width
        let height = view.frame.size.height
        myLabelConfig(width: width, height: height)
        
    }
    
    func myLabelConfig(width : CGFloat, height : CGFloat ){
        myLabel.text = "This a basic text field"
        myLabel.textAlignment = .center
        myLabel.textColor = UIColor.white
        myLabel.layer.backgroundColor = UIColor.green.cgColor
        myLabel.layer.cornerRadius = 25
        myLabel.layer.cornerRadius = 25
        myLabel.layer.borderWidth = 2
        myLabel.layer.borderColor = UIColor.darkGray.cgColor
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 50/2, width: width * 0.8, height: 50)
        view.addSubview(myLabel)
        
    }
    
}