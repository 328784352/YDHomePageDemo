//
//  YDHomepageViewController.swift
//  YDHomePageDemo
//
//  Created by 小权权 on 2020/12/4.
//

import UIKit

class YDHomepageViewController: UIViewController {

    public var message:String?
    
    typealias YDHomepageCallback = (_ param:String) -> Void
    public var callback:YDHomepageCallback? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

        let nameLabel = UILabel()
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        nameLabel.text = "我定制版本的YDHomePage~~"
        nameLabel.numberOfLines = 0
        nameLabel.frame = CGRect(x: 15, y: 100, width: UIScreen.main.bounds.size.width, height: 100)
        self.view.addSubview(nameLabel)
        
        let messageLabel = UILabel()
        messageLabel.font = UIFont.systemFont(ofSize: 18)
        messageLabel.text = "消息：\(message ?? "")"
        messageLabel.frame = CGRect(x: 15, y: 200, width:UIScreen.main.bounds.size.width , height: 100)
        self.view.addSubview(messageLabel)
        
        let callbackBtn = UIButton()
        callbackBtn.frame = CGRect(x: 15, y: 300, width: 200, height: 50)
        callbackBtn.setTitle("回调按钮", for: .normal)
        callbackBtn.addTarget(self, action: #selector(callbackClick), for: .touchUpInside)
        callbackBtn.setTitleColor(.black, for: .normal)
        callbackBtn.layer.masksToBounds = true
        callbackBtn.layer.cornerRadius = 25
        callbackBtn.layer.borderColor = UIColor.black.cgColor
        callbackBtn.layer.borderWidth = 1
        self.view.addSubview(callbackBtn)
        
    }
    
    @objc func callbackClick(){
        self.callback?("从HomePage的回调来了")
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
