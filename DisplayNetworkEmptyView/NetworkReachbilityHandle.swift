//
//  NetworkReachbilityHandle.swift
//  DisplayNetworkEmptyView
//
//  Created by 仲召俊 on 2019/10/22.
//  Copyright © 2019 zhongzj. All rights reserved.
//

import UIKit
import AFNetworking

class NetworkReachbilityHandle: NSObject {
    private override init() {}
    static let `default` = NetworkReachbilityHandle()
    
    private let manager = AFNetworkReachabilityManager.shared()
    
    ///当前网络连接状态
    var currentNetStatus = false
    
    ///监测网络连接状态
    static func askNetworkReachbility() {
        NetworkReachbilityHandle.default.manager.setReachabilityStatusChange { (status) in
            
            var _currentNetStatus = false
            
            switch status {
            case .notReachable:
                _currentNetStatus = false
            case .reachableViaWiFi:
                _currentNetStatus = true
            case .reachableViaWWAN:
                _currentNetStatus = true
            default:
                break
            }
            print("===\n网络状态：\(_currentNetStatus ? "连接正常" : "连接失败")\n===")
            NetworkReachbilityHandle.default.currentNetStatus = _currentNetStatus
        }
        
        NetworkReachbilityHandle.default.manager.startMonitoring()
    }
}
