//
//  TestViewController.swift
//  DisplayNetworkEmptyView
//
//  Created by 仲召俊 on 2019/10/22.
//  Copyright © 2019 zhongzj. All rights reserved.
//

import UIKit

class TestViewController: BaseViewController {

     private lazy var welcomeLabel: UILabel = {
        let lb = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 30))
        lb.center = self.view.center
        lb.textAlignment = .center
        lb.text = "欢迎回来！"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .black
        return lb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Test"
        
        view.addSubview(welcomeLabel)
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
