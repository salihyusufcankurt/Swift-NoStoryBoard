//
//  SearchVC.swift
//  BottomNavBar
//
//  Created by Salih Yusuf Cankurt on 4.02.2020.
//  Copyright © 2020 Salih Yusuf Cankurt. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        let width = view.frame.size.width
        let height = view.frame.size.height
        setupNextButton(width: width, height: height)

    }
    
    func setupNextButton(width : CGFloat, height : CGFloat ){
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.red, for: .normal)
        nextButton.layer.cornerRadius = 4
        nextButton.setTitle("DETAIL SCREEN", for: .normal)
        nextButton.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 50/2, width: width * 0.8, height: 50)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)

        view.addSubview(nextButton)

    }
    
    @objc func nextButtonTapped (){
        let nextScreen = SearchDetailVC()
        nextScreen.title = "Search Detail"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
}
