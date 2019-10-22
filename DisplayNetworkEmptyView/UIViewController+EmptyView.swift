//
//  UIViewController+EmptyView.swift
//  DisplayNetworkEmptyView
//
//  Created by 仲召俊 on 2019/10/22.
//  Copyright © 2019 zhongzj. All rights reserved.
//

import UIKit

extension UIViewController {
    ///检查网络状态
    func checkNetworkReachbality(baseView: UIView) {
        if !NetworkReachbilityHandle.default.currentNetStatus {
            let emptyView = EmptyView()
            baseView.addSubview(emptyView)
        } else {
            for v in baseView.subviews {
                if v.isKind(of: EmptyView.self) {
                    v.removeFromSuperview()
                }
            }
        }
    }
}
