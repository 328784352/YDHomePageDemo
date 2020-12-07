//
//  ViewController.swift
//  YDHomePageDemo
//
//  Created by 小权权 on 2020/12/4.
//

import UIKit

class ViewController: UIViewController {

    let wwidth = UIScreen.main.bounds.size.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let oneBtn = UIButton()
        oneBtn.frame = CGRect(x: wwidth/2 - 100, y: 100, width: 200, height: 50)
        oneBtn.setTitle("进入YDHomepage", for: .normal)
        oneBtn.setTitleColor(.black, for: .normal)
        oneBtn.layer.masksToBounds = true
        oneBtn.layer.cornerRadius = 25
        oneBtn.layer.borderColor = UIColor.black.cgColor
        oneBtn.layer.borderWidth = 1
        oneBtn.addTarget(self, action: #selector(oneBtnClick), for: .touchUpInside)
        self.view.addSubview(oneBtn)
        
        
    }
    
    @objc func oneBtnClick() {
        
        let homepage = YDHomepageViewController()
        homepage.message = "从Homepage调用过来的"
        let nav = UINavigationController.init(rootViewController: homepage)
        self.present(nav, animated: true) {

        }
    }


}

