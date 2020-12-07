//
//  Target_YDHomePage.swift
//  YDHomePageDemo
//
//  Created by 小权权 on 2020/12/7.
//

import UIKit

@objc class Target_YDHomePage: NSObject {
    @objc func Action_PushHomePage(_ params:NSDictionary) -> UIViewController{
        let homePage = YDHomepageViewController()
        if let messgae = params["message"] as? String{
            homePage.message = messgae
        }
        return homePage
    }
}
