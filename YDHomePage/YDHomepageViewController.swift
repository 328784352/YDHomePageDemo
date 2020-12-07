//
//  YDHomepageViewController.swift
//  YDHomePageDemo
//
//  Created by 小权权 on 2020/12/4.
//

import UIKit

class YDHomepageViewController: UIViewController {

    public var message:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nameLabel = UILabel()
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        nameLabel.text = "我是YDHomePage"
        nameLabel.frame = CGRect(x: 0, y: 100, width: UIScreen.main.bounds.size.width, height: 100)
        self.view.addSubview(nameLabel)
        
        let messageLabel = UILabel()
        messageLabel.font = UIFont.systemFont(ofSize: 18)
        messageLabel.text = "消息：\(message ?? "")"
        messageLabel.frame = CGRect(x: 0, y: 200, width:UIScreen.main.bounds.size.width , height: 100)
        self.view.addSubview(messageLabel)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
