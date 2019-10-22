//
//  BaseViewController.swift
//  DisplayNetworkEmptyView
//
//  Created by 仲召俊 on 2019/10/22.
//  Copyright © 2019 zhongzj. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        checkNetworkReachbality(baseView: view)
    }

}
